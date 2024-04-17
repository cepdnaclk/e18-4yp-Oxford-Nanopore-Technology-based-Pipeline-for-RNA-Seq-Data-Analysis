import paramiko
import streamlit as st
import time


def login():
    def on_login():
        try:
            ssh_client = create_ssh_connection(host, username, password)

            toast_placeholder = st.empty()
            toast_placeholder.success("Login successful!")
            ssh_client.close()
            time.sleep(2)
            toast_placeholder.empty()

            title_placeholder.empty()
            host_placeholder.empty()
            username_placeholder.empty()
            password_placeholder.empty()
            st.session_state.logged_in = True
            st.session_state.host = host
            st.session_state.username = username
            st.session_state.password = password
            st.session_state.ssh_client = ssh_client

        except Exception as e:
            st.error(f"Login failed: {e}")

    title_placeholder = st.empty()
    host_placeholder = st.empty()
    username_placeholder = st.empty()
    password_placeholder = st.empty()
    login_button_placeholder = st.empty()

    title_placeholder.title("Login Page")

    host = host_placeholder.text_input("Host")
    username = username_placeholder.text_input("Username")
    password = password_placeholder.text_input("Password", type="password")

    if host and username and password:
        print(host)
        print(username)
        print(password)
        if not login_button_placeholder.button("Login", on_click=on_login):
            st.error("Invalid hostname, username or password, . Please try again.")


def create_ssh_connection(host, username, password):
    ssh_client = paramiko.SSHClient()
    ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh_client.connect(hostname=host, username=username, password=password)
    return ssh_client


def create_project_dir(ssh_client, folder_name):
    ssh_client.exec_command(f"mkdir -p WebApp/{folder_name}")
    ssh_client.exec_command(f"mkdir -p WebApp/{folder_name}/test-dir")
    ssh_client.exec_command(f"mkdir -p WebApp/{folder_name}/EXPORTS")
    ssh_client.exec_command(
        f'echo "Hello World" > WebApp/{folder_name}/hello-world.txt'
    )


def download_file(ssh_client, remote_path, local_path):
    sftp_client = ssh_client.open_sftp()
    sftp_client.get(remote_path, local_path)
    sftp_client.close()


def create_zip_folder(ssh_client, folder_path, zip_file_path):
    # Execute the zip command remotely to create the zip file
    ssh_client.exec_command(f"zip -r {zip_file_path} {folder_path}")


def project_init():
    st.title("Project Init Page")
    st.write("Welcome to the Project Init Page! You can start project init here.")


def blasting(host, username, password):
    if not st.button("Back", on_click=logout):
        st.title("Blasting Page")
        folder_name = st.text_input("Project Name")
        uploaded_file = st.file_uploader("Upload FAST5 file as a zip", type=["zip"])

        project_status = st.empty()

        if st.button("Start Blasting"):
            try:
                project_status.info("Project initializing started...")
                ssh_client = create_ssh_connection(host, username, password)
                create_project_dir(ssh_client, folder_name)
                project_status.success(
                    f"Project '{folder_name}' is initiated successfully!"
                )
                time.sleep(1)
                project_status.empty()

                ssh_client.close()
            except Exception as e:
                project_status.error(f"An error occurred: {e}")
                time.sleep(3)
                project_status.empty()

            if uploaded_file is not None:
                project_status.empty()
                try:
                    project_status.info("Uploading project files...")
                    ssh_client = create_ssh_connection(host, username, password)
                    with ssh_client.open_sftp() as sftp:
                        with sftp.file(
                            f"WebApp/{folder_name}/{uploaded_file.name}", "wb"
                        ) as f:
                            f.write(uploaded_file.getvalue())
                    project_status.success("Project file are uploaded successfully!")

                    # blasting is started
                    time.sleep(1)
                    project_status.info("Blasting started...")
                    time.sleep(2)
                    project_status.success("Blasting Completed...")
                    time.sleep(2)
                    project_status.empty()

                    # TODO:

                    # create a zip file of whole final project
                    create_zip_folder(
                        ssh_client,
                        f"WebApp/{folder_name}",
                        f"WebApp/{folder_name}/EXPORTS/exports.zip",
                    )

                    project_status.info("Completed project files are Downloading...")

                    # Download the project export file from the remote server
                    download_file(
                        ssh_client,
                        f"WebApp/{folder_name}/EXPORTS/exports.zip",
                        "exports.zip",
                    )

                    project_status.success(
                        "Completed project files are Downloaded successfully!"
                    )

                except Exception as e:
                    project_status.error(f"An error occurred while uploading file: {e}")
                    ssh_client.close()


# Main function
def logout():
    st.session_state.logged_in = False


def main():
    global ssh_client, host, username, password

    if "logged_in" not in st.session_state:
        host = "localhost"
        st.session_state.logged_in = False

    if not st.session_state.logged_in:
        login()

    else:
        blasting(
            st.session_state.host, st.session_state.username, st.session_state.password
        )


# Run the main function
if __name__ == "__main__":
    main()
