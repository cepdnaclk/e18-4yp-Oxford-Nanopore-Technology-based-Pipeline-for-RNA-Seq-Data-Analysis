layout: home
permalink: index.html

repository-name: e18-4yp-Oxford-Nanopore-Technology-based-Pipeline-for-RNA-Seq-Data-Analysis
---

[comment]: # "This is the standard layout for the project, but you can clean this and use your own template"

# Oxford Nanopore Technology-based Pipeline for RNA Seq Data Analysis

#### Team

- E/18/068, G. C. Devinda, [email](e18068@eng.pdn.ac.lk )
- E/18/073, W. M. T. Dhananjaya, [email](e18073@eng.pdn.ac.lk )
- E/18/214, H.K. Manahara, [email](e18214@eng.pdn.ac.lk )

#### Supervisors

- Dr. Asitha Bandaranayake, [email](asithab@eng.pdn.ac.lk)
- Prof. Pradeepa Bandaranayake, [email](mailto:name@eng.pdn.ac.lk)

#### Table of content

1. [Abstract](#abstract)
2. [Related works](#related-works)
3. [Methodology](#methodology)
4. [Experiment Setup and Implementation](#experiment-setup-and-implementation)
5. [Results and Analysis](#results-and-analysis)
6. [Conclusion](#conclusion)
7. [Publications](#publications)
8. [Links](#links)

---

<!-- 
DELETE THIS SAMPLE before publishing to GitHub Pages !!!
This is a sample image, to show how to add images to your page. To learn more options, please refer [this](https://projects.ce.pdn.ac.lk/docs/faq/how-to-add-an-image/)
![Sample Image](./images/sample.png) 
-->


## Abstract
The regulation of gene expression dynamics is crucial for understanding cellular processes and organismal development. mRNA analysis is fundamental in deciphering the complex regulatory networks governing gene dynamics, with implications across diverse fields such as neuroscience and plant physiology. While Illumina sequencing has been extensively used for high-throughput mRNA analysis, it comes with limitations like short read lengths and PCR amplification biases. In contrast, Oxford Nanopore Technology (ONT) offers advantages such as long reads, real-time sequencing, and direct RNA sequencing, thereby enhancing the comprehensive analysis of gene expression dynamics.

This research conducts a thorough evaluation of RNA sequence data analysis pipelines, focusing specifically on Nanopore sequencing technology. It identifies the advantages and limitations of existing methodologies, uncovers gaps in current knowledge, and proposes novel approaches for precise transcriptomic analysis. Through a comprehensive literature review, it explores the landscape of both Illumina and Nanopore sequencing technologies, highlighting their applications, limitations, and future directions. Additionally, the research discusses strategies to improve the efficiency of RNA sequencing data analysis pipelines, emphasizing the significance of optimized workflows and the selection of alignment tools.

The ultimate goal of this research is to contribute to the optimization of RNA sequencing data analysis pipelines, facilitating comprehensive and precise transcriptomic analysis across various research domains. By addressing the challenges and leveraging the strengths of Nanopore sequencing technology, this research aims to advance our understanding of gene expression dynamics and its regulation.
## Related works
RNA, or ribonucleic acid, is a vital molecule found in all living cells, playing essential roles in various biological processes. Unlike its counterpart DNA, RNA acts as a messenger, carrying genetic information from DNA to guide protein synthesis or directly performing catalytic functions. The analysis of RNA provides valuable insights into gene expression patterns, regulatory mechanisms, and disease mechanisms. RNA sequencing, a powerful tool in molecular biology, enables researchers to study the entire transcriptome, identifying and quantifying RNA molecules within a sample. This sequencing pipeline has revolutionized fields such as genomics, oncology, and personalized medicine, offering unparalleled opportunities for understanding diseases, discovering biomarkers, and developing targeted therapies. By unraveling the complexities of RNA, this technology contributes to advancements in healthcare, agriculture, and biotechnology, ultimately benefiting society through improved diagnostics, treatments, and bioproduction processes.

In the realm of molecular biology and genetics, understanding the dynamics of gene expression is paramount for unraveling the intricacies of cellular processes and organismal development. While traditional methods have provided valuable insights into DNA sequencing, the advent of Oxford Nanopore Technology (ONT) offers a promising avenue for revolutionizing RNA sequencing (RNA-Seq) and unlocking new dimensions of gene regulation.

RNA, particularly messenger RNA (mRNA), serves as the intermediary between the genetic information encoded in DNA and the synthesis of functional proteins. Studying gene dynamics, the process of genes being turned on and off over time, is crucial for comprehending the regulatory mechanisms governing protein expression and function. However, the existing RNA-Seq pipelines, predominantly reliant on Illumina technology, present certain limitations, including short read lengths, PCR amplification biases, and reference dependency.

The emergence of ONT presents an opportunity to address these limitations and pioneer a new frontier in RNA-Seq data analysis. Compared to traditional methods, ONT offers a cost-effective solution with long-read sequencing capabilities, enabling the resolution of complex transcript structures and accurate identification of alternative splicing events. Moreover, ONT technology is continuously evolving, with ongoing advancements and improvements, promising even greater precision and efficiency in RNA-Seq analysis.

However, despite the established pipelines for DNA sequencing using ONT technology, there remains a conspicuous gap in mRNA pipeline development. This research vacuum underscores the urgent need to embark on a comprehensive exploration into developing an ONT-based pipeline tailored specifically for RNA-Seq data analysis.

By undertaking this research project, we aim to bridge this gap and lay the foundation for a robust and versatile framework for analyzing RNA-Seq data using ONT technology. Our endeavor will not only facilitate the elucidation of gene regulatory networks and molecular mechanisms but also pave the way for groundbreaking discoveries in fields such as biomedical research, agriculture, and environmental science.

Through interdisciplinary collaboration and innovative methodologies, we aspire to propel the field of RNA biology forward, empowering researchers worldwide to unravel the complexities of gene expression dynamics and ultimately advance our understanding of life at the molecular level. Together, we embark on a journey of discovery, fueled by the promise of ONT technology and the boundless potential it holds for shaping the future of RNA-Seq analysis.

Research Gaps
The utilization of Nanopore sequencing technology presents a promising avenue for advancing gene expression analysis, particularly in the realm of mRNA sequencing. However, significant research gaps exist regarding the impact of Nanopore sequencing on the accuracy and comprehensiveness of gene expression analysis compared to Illumina sequencing.

Nanopore sequencing technology offers several advantages over traditional methods like Illumina sequencing. Firstly, Nanopore sequencing enables long-read sequencing, allowing for the direct sequencing of full-length RNA molecules without the need for fragmentation or amplification. This feature has the potential to capture complex transcript structures, including alternative splicing events, isoforms, and non-coding RNAs, which may be missed or inaccurately represented by short-read sequencing platforms like Illumina.

Moreover, Nanopore sequencing provides real-time data acquisition, allowing researchers to monitor RNA sequencing in situ and enabling the detection of dynamic changes in gene expression over time. This capability is particularly valuable for studying transient or rare RNA species and elucidating dynamic regulatory processes within cells.

However, despite these promising features, there are still challenges and uncertainties surrounding the accuracy and comprehensiveness of gene expression analysis using Nanopore sequencing technology. The error rate associated with Nanopore sequencing, primarily due to base-calling inaccuracies and signal noise, remains a concern and may impact the reliability of transcript quantification and isoform identification.

Furthermore, the lack of established pipelines and standardized protocols for mRNA analysis using Nanopore sequencing poses a significant obstacle. Compared to Illumina sequencing, which benefits from well-established bioinformatics tools and reference databases, Nanopore sequencing requires the development of tailored data analysis pipelines optimized for long-read data characteristics.

Addressing these research gaps requires interdisciplinary efforts combining expertise in molecular biology, bioinformatics, and computational biology. Future studies should focus on optimizing data preprocessing, error correction, and transcript quantification methods specifically tailored for Nanopore sequencing data. Additionally, comparative analyses directly comparing the performance of Nanopore and Illumina sequencing platforms across diverse biological contexts are essential for assessing the accuracy, sensitivity, and reliability of gene expression analysis using Nanopore technology.

Overall, by addressing these research gaps, we can unlock the full potential of Nanopore sequencing for gene expression analysis, paving the way for comprehensive insights into the dynamic landscape of the transcriptome and its regulatory mechanisms.

RNA sequencing (RNA-seq) offers deep insights into gene expression, with applications spanning various research fields. Our project focuses on analyzing tree RNA using nanopore technology to understand genetic adaptation to reduced water conditions. Leveraging advancements like single-cell RNA-seq and comprehensive workflows, we aim to unravel gene expression dynamics. Illumina technology, while popular, has limitations. Our research addresses these using nanopore sequencing, aiming to enhance RNA sequencing analyses. We explore strategies to enhance efficiency, such as tailored workflows and serverless computing. Nanopore sequencing technology revolutionizes molecular biology research, offering long reads and portability. Our project aligns with these advancements, aiming to understand gene expression dynamics in trees. We leverage nanopore technology's advantages to enhance RNA sequencing data analysis, anticipating comprehensive insights into genetic responses. Oxford Nanopore Technology (ONT) offers distinct advantages over Illumina sequencing, eliminating PCR amplification and enabling long read lengths. Our project leverages ONT's features to understand gene expression responses in trees. RNA sequencing data analysis involves pre-processing, main analysis, and downstream analysis stages. Our project aims to develop an optimized pipeline for analyzing tree RNA using nanopore technology, drawing insights from existing methodologies to ensure efficient, accurate, and scalable analysis.

**Strengths of Nanopore Sequencing:**

1. **Rapid Turnaround Time**: Provides real-time or near real-time sequencing results, beneficial for time-sensitive applications.
2. **Portability**: Devices like the MinION are compact and portable, making sequencing accessible in various settings, including field-based or resource-limited environments.
3. **Long Read Lengths**: Facilitates the resolution of complex genomic regions, enhancing genome assembly accuracy and enabling comprehensive genomic analysis.
4. **Real-time Data Analysis**: Allows monitoring of sequencing progress and immediate quality control, facilitating adaptive experimental design and rapid decision-making.
5. **Cost-effectiveness**: Relatively lower cost compared to some other sequencing platforms, such as Illumina sequencing.
6. **Single-molecule Sequencing**: Eliminates the need for PCR amplification, preserving the integrity of original DNA or RNA molecules and reducing amplification biases and errors.

**Limitations of Nanopore Sequencing:**

1. **Lower Base Accuracy**: Compared to platforms like Illumina sequencing, Nanopore sequencing has lower base accuracy, particularly in homopolymeric regions and repetitive sequences, necessitating additional error correction strategies.
2. **Susceptibility to Base Modifications**: Errors associated with base modifications like DNA methylation or chemical modifications can impact base calling accuracy, requiring specialized error correction algorithms.
3. **Complex Data Analysis**: Analyzing Nanopore sequencing data can be challenging due to the complexity of long-read data and the need for specialized bioinformatics tools and algorithms.
4. **Documentation and Research Gaps**: New tools like Dorado promise increased accuracy but face challenges in adoption due to limited documentation and research studies compared to established tools like Guppy.

**Pipeline Methodologies for Nanopore RNA Analysis:**

1. **Data Acquisition**: Involves converting raw data to a standardized format like fastq. Tools like Guppy and Dorado are used for base calling, with Dorado promising enhanced accuracy but facing challenges in adoption due to limited documentation.
2. **Quality Control**: Essential for filtering and preprocessing raw sequencing data to remove artifacts and errors. Tools like Fastp prioritize speed, while AfterQC offers comprehensive error correction but is slower and more computationally intensive.
3. **Data Blasting**: Involves comparing cleaned sequencing data against databases like NCBI to identify and characterize sequences, providing insights into their identity, function, and evolutionary relationships.


## Methodology
![image](https://github.com/chirangovinna/e18-4yp-Oxford-Nanopore-Technology-based-Pipeline-for-RNA-Seq-Data-Analysis/assets/157230863/4779df1e-30f9-4555-9c0c-dffb062b7419)

1. **Raw Data Acquisition:**
   - Obtain raw data directly from ONT for direct RNA sequencing.
   - ONT technology generates electrical signals as RNA molecules pass through nanopores, providing real-time sequencing data.

2. **Base Calling:**
   - Convert raw electrical signals into nucleotide sequences (A, T, G, C) representing genetic information.
   - Base calling algorithms interpret the electrical signals to identify the corresponding nucleotides.

3. **Data Preprocessing:**
   - Ensure the accuracy and cleanliness of the data through quality checks and error removal.
   - This step involves filtering out noise, correcting sequencing errors, and trimming low-quality reads to improve the reliability of downstream analysis.

4. **Data Blasting:**
   - Utilize stranded data blasting techniques to align RNA sequences against reference genomes or transcriptomes.
   - Stranded data blasting helps identify and quantify active RNA molecules, providing insights into gene expression levels and alternative splicing events.

5. **Optimized Pipeline:**
   - Explore alternative methods and parameters to enhance the accuracy and efficiency of RNA-Seq analysis.
   - Optimization may involve fine-tuning algorithms, adjusting filtering criteria, or integrating complementary data analysis approaches.
   - The goal is to develop a robust and efficient pipeline tailored to the unique characteristics of ONT-generated RNA sequencing data.

By following these step-by-step processes, researchers can effectively analyze RNA-Seq data obtained using Oxford Nanopore Technology, uncovering valuable insights into gene expression dynamics and regulatory networks within cells. This optimized pipeline holds the potential to significantly advance our understanding of RNA biology and its implications in various fields, including genetics, molecular biology, and biomedical research.

## Experiment Setup and Implementation

## Results and Analysis
![image](https://github.com/chirangovinna/e18-4yp-Oxford-Nanopore-Technology-based-Pipeline-for-RNA-Seq-Data-Analysis/assets/157230863/8bbf26a5-4536-4792-8175-59d819f4b33b)

![image](https://github.com/chirangovinna/e18-4yp-Oxford-Nanopore-Technology-based-Pipeline-for-RNA-Seq-Data-Analysis/assets/157230863/4549571f-97db-41da-ae38-8786848da98e)

![image](https://github.com/chirangovinna/e18-4yp-Oxford-Nanopore-Technology-based-Pipeline-for-RNA-Seq-Data-Analysis/assets/157230863/79fcbbd0-fdbe-48cf-a2df-581eaa09f52f)

![image](https://github.com/chirangovinna/e18-4yp-Oxford-Nanopore-Technology-based-Pipeline-for-RNA-Seq-Data-Analysis/assets/157230863/c547d3d9-48c2-47e5-87c3-9ddf14fa4572)


## Conclusion
Certainly! Here's a short description of each tool selected for the different steps in the RNA analysis pipeline:

1. **Base calling - Guppy basecaller:**
   - Guppy basecaller is a software developed by Oxford Nanopore Technologies specifically for base calling from raw electrical signals generated during nanopore sequencing. It employs neural network algorithms to accurately interpret the electrical signals and convert them into nucleotide sequences (A, T, G, C), providing the primary data for downstream analysis.

2. **Data Purification - Porechop:**
   - Porechop is a tool designed for trimming adaptors and barcodes from Oxford Nanopore sequencing data, improving the quality and cleanliness of the raw reads. It identifies and removes sequencing artifacts, adapter sequences, and other contaminants, preparing the data for subsequent analysis steps.

3. **Data Wrangling - Seqtk:**
   - Seqtk is a versatile toolkit for processing and manipulating FASTQ files commonly used in sequencing data analysis. It offers various functionalities, including subsetting reads, filtering by quality, trimming sequences, and converting between different file formats. Seqtk facilitates data manipulation tasks essential for preparing sequencing data for downstream analysis pipelines.

4. **Data Blasting - Command Line BLAST:**
   - Command Line BLAST (Basic Local Alignment Search Tool) is a widely used bioinformatics tool for comparing nucleotide or protein sequences against a database to identify homologous sequences. It enables the alignment of RNA sequences obtained from nanopore sequencing against reference genomes or transcriptomes, facilitating the identification of gene expression patterns, isoforms, and potential functional elements.

By incorporating these tools into the RNA analysis pipeline, researchers can efficiently process, clean, and analyze nanopore sequencing data, ultimately enabling comprehensive insights into gene expression dynamics and regulatory mechanisms. Each tool plays a crucial role in different stages of the pipeline, collectively contributing to the accuracy, reliability, and reproducibility of gene expression analysis using Oxford Nanopore Technology.
## Publications
[//]: # "Note: Uncomment each once you uploaded the files to the repository"

<!-- 1. [Semester 7 report](./) -->
<!-- 2. [Semester 7 slides](./) -->
<!-- 3. [Semester 8 report](./) -->
<!-- 4. [Semester 8 slides](./) -->
<!-- 5. Author 1, Author 2 and Author 3 "Research paper title" (2021). [PDF](./). -->


## Links

[//]: # ( NOTE: EDIT THIS LINKS WITH YOUR REPO DETAILS )

- [Project Repository](https://github.com/cepdnaclk/repository-name)
- [Project Page](https://cepdnaclk.github.io/repository-name)
- [Department of Computer Engineering](http://www.ce.pdn.ac.lk/)
- [University of Peradeniya](https://eng.pdn.ac.lk/)

[//]: # "Please refer this to learn more about Markdown syntax"
[//]: # "https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet"
