%==Elseries V2.00
%==Designed By Swadexi Istiqphara
%==Program Studi Teknik Elektro Institut Teknologi Sumatera
%==©2025

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{elsinta}[2025/09/30 ITERA Project Proposal Cover Page Class]
% Memuat kelas dasar 'article'
\LoadClass[12pt, a4paper]{article}




\usepackage[hidelinks]{hyperref}
%=== PILIH Bahasa - Uncomment Salah Satu
%\usepackage[english]{babel}
 \usepackage[indonesian]{babel}

\RequirePackage{bilingual}
% ----------------------------------------------------
% A. Opsi & Pemuatan Kelas Dasar
% ----------------------------------------------------

\usepackage{algorithm}
\usepackage{algorithmic}

\usepackage{listings}
\usepackage{hyperref}
\lstset{
  language=C++,                    % Bahasa pemrograman (Arduino mirip C++)
  basicstyle=\ttfamily\footnotesize, % Font
  numbers=left,                    % Nomor baris di kiri
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  stringstyle=\color{orange},
  commentstyle=\color{green!50!black},
  frame=single,                    % Kotak di sekitar kode
  breaklines=true,                 % Potong baris panjang
  showstringspaces=false
}
% ----------------------------------------------------
% B. Pemuatan Paket dan Konfigurasi
% ----------------------------------------------------
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{cite}        % Untuk sitasi numerik
\usepackage{url}

% \usepackage{helvet} % Font Sans-serif seperti template awal
% \renewcommand{\familydefault}{\sfdefault}



\usepackage{graphicx}
\usepackage{array}
\usepackage{lastpage}
\usepackage[left=2.5cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry} 
\usepackage{xcolor} 
\usepackage{longtable}
% Menonaktifkan indentasi paragraf dan nomor halaman standar
% ... (lanjutan di B. Pemuatan Paket dan Konfigurasi)
\usepackage{fancyhdr} % Penting untuk kustomisasi footer
\usepackage{tikzpagenodes} % Untuk menggambar motif pada halaman
\usepackage{xcolor} % Pastikan ini ada untuk warna
% ...
\usepackage{tabularx}
\usepackage{array}
\usepackage{ragged2e}
\usepackage[dvipsnames]{xcolor}
\usepackage[most]{tcolorbox}
\usepackage{setspace}
% \usepackage{background}
\usepackage{float}
% --- Kustomisasi Background Tipis ---

% % Definisikan Warna Abu-Abu Sangat Tipis
% \definecolor{lightgray}{gray}{0.95} 
% \SetBgContents{
%     % Konten yang akan diletakkan di background.
%     % Contoh: Teks Watermark
%      \Huge\color{lightgray}\scshape Draft Proposal - Confidential
    
%     % ATAU, untuk gambar/logo samar:
%      % \includegraphics[width=1.0\textwidth, angle=0, opacity=0.1]{image/doc/logo-itera.png}
% }



\renewcommand{\familydefault}{\sfdefault}

% ===== Gaya kolom & helper =====
\newcolumntype{L}{>{\RaggedRight\arraybackslash}X}
\setlength{\tabcolsep}{6pt}
\renewcommand{\arraystretch}{1.05}

% Blok orang (jabatan opsional)
% \Person{Jabatan}{Nama}{ID}{PathTTD}{Tinggi}
\newcommand{\Person}[5]{%
  \if\relax\detokenize{#1}\relax\else\textbf{#1}\\\fi
  #2\\
  #3\\
  \textit{Tanda Tangan}\\[2pt]
  \includegraphics[height=#5]{#4}%
}



\setlength{\parindent}{0pt}
\pagestyle{empty}

% ----------------------------------------------------
% C. Mendefinisikan Perintah untuk Data Dokumen
% ----------------------------------------------------
% Perintah ini akan dipanggil di file .tex utama
% Tambahkan perintah baru untuk data yang akan dimasukkan oleh user
\newcommand{\@projectcode}{}
\newcommand{\projectcode}[1]{\renewcommand{\@projectcode}{#1}}

\newcommand{\@documentname}{}
\newcommand{\documentname}[1]{\renewcommand{\@documentname}{#1}}

\newcommand{\@documenttitle}{}
\newcommand{\documenttitle}[1]{\renewcommand{\@documenttitle}{#1}}

\newcommand{\@capstonetitle}{}
\newcommand{\capstonetitle}[1]{\renewcommand{\@capstonetitle}{#1}}

\newcommand{\@shortname}{}
\newcommand{\shortname}[1]{\renewcommand{\@shortname}{#1}}

\newcommand{\@documentnumber}{}
\newcommand{\documentnumber}[1]{\renewcommand{\@documentnumber}{#1}}

\newcommand{\@revisionnumber}{}
\newcommand{\revisionnumber}[1]{\renewcommand{\@revisionnumber}{#1}}

\newcommand{\@publicationdate}{}
\newcommand{\publicationdate}[1]{\renewcommand{\@publicationdate}{#1}}

% \newcommand{\@pagecount}{20} % Default jika tidak diisi
% \newcommand{\pagecount}[1]{\renewcommand{\@pagecount}{#1}}



\newcommand{\@revdatefooter}{}
\newcommand{\revdatefooter}[1]{\renewcommand{\@revdatefooter}{#1}}
% --- Variabel untuk Lembar Pengesahan ---
        % Ketua Tim
        \newcommand{\@ketuatimnama}{}
        \newcommand{\ketuatimnama}[1]{\renewcommand{\@ketuatimnama}{#1}}
        \newcommand{\@ketuatimnim}{}
        \newcommand{\ketuatimnim}[1]{\renewcommand{\@ketuatimnim}{#1}}
        \newcommand{\@ketuatimsig}{}
        \newcommand{\ketuatimsig}[1]{\renewcommand{\@ketuatimsig}{#1}} % Path ke file TTD
        
        % Anggota Tim 1 (Jika ada)
        \newcommand{\@anggotanamaI}{}
        \newcommand{\anggotanamaI}[1]{\renewcommand{\@anggotanamaI}{#1}}
        \newcommand{\@anggotanimI}{}
        \newcommand{\anggotanimI}[1]{\renewcommand{\@anggotanimI}{#1}}
        \newcommand{\@anggotasigI}{}
        \newcommand{\anggotasigI}[1]{\renewcommand{\@anggotasigI}{#1}} % Path ke file TTD
        
        % Anggota Tim 2 (Jika ada)
        \newcommand{\@anggotanamaII}{}
        \newcommand{\anggotanamaII}[1]{\renewcommand{\@anggotanamaII}{#1}}
        \newcommand{\@anggotanimII}{}
        \newcommand{\anggotanimII}[1]{\renewcommand{\@anggotanimII}{#1}}
        \newcommand{\@anggotasigII}{}
        \newcommand{\anggotasigII}[1]{\renewcommand{\@anggotasigII}{#1}} % Path ke file TTD
        
        % Dosen Pembimbing I
        \newcommand{\@pembimbingInama}{}
        \newcommand{\pembimbingInama}[1]{\renewcommand{\@pembimbingInama}{#1}}
        \newcommand{\@pembimbingInip}{}
        \newcommand{\pembimbingInip}[1]{\renewcommand{\@pembimbingInip}{#1}}
        \newcommand{\@pembimbingIsig}{}
        \newcommand{\pembimbingIsig}[1]{\renewcommand{\@pembimbingIsig}{#1}} % Path ke file TTD (Bisa berupa QR Code)
        
        % Dosen Pembimbing II
        \newcommand{\@pembimbingIInama}{}
        \newcommand{\pembimbingIInama}[1]{\renewcommand{\@pembimbingIInama}{#1}}
        \newcommand{\@pembimbingIInip}{}
        \newcommand{\pembimbingIInip}[1]{\renewcommand{\@pembimbingIInip}{#1}}
        \newcommand{\@pembimbingIIsig}{}
        \newcommand{\pembimbingIIsig}[1]{\renewcommand{\@pembimbingIIsig}{#1}} % Path ke file TTD
        
        % Tanggal Persetujuan
        \newcommand{\@approvaldate}{}
        \newcommand{\approvaldate}[1]{\renewcommand{\@approvaldate}{#1}}
        
        % Perubahan pada footer untuk halaman 2
        \newcommand{\@currentpage}{2}
        \newcommand{\currentpage}[1]{\renewcommand{\@currentpage}{#1}}
\counterwithin{figure}{section}
\counterwithin{table}{section}
\counterwithin{equation}{section}
% Definisikan Warna yang Digunakan
\definecolor{iteraYellow}{HTML}{FCD65C}
% 2. Definisikan ulang format penomoran gambar/tabel: EL <Nomor Section> . <Nomor Urut>
% Di kelas 'article', \thesection menghasilkan angka sederhana (1, 2, 3...)
\renewcommand{\thefigure}{\@projectcode.\arabic{figure}}
\renewcommand{\thetable}{\@projectcode.\arabic{table}}
\renewcommand{\theequation}{\@projectcode.\arabic{equation}}
% Perintah TikZ untuk Motif Sudut Bawah
\newcommand{\drawIteraMotif}{
    % Mulai mode TikZ dengan lapisan 'background'
    \begin{tikzpicture}[overlay, remember picture]
        
        % Gambarkan Segitiga Kuning di sudut kiri bawah
        \fill[iteraYellow] 
        (current page.south west) 
        -- ([xshift=0cm, yshift=0cm]current page.south west) 
        -- ([xshift=0cm, yshift=5cm]current page.south west) 
        -- ([xshift=10cm, yshift=0cm]current page.south west) % Titik di sepanjang bawah
        -- cycle;
        
        % Gambarkan Garis Miring yang memotong sudut
        % Segitiga besar ini yang memberikan ilusi garis miring di bawah konten
        \fill[iteraYellow] 
        (current page.south west) 
        -- ([xshift=\paperwidth, yshift=0pt]current page.south west) % Pindah ke sudut kanan bawah
        -- ([xshift=\paperwidth, yshift=1cm]current page.south east) % Titik di kanan atas motif
        -- ([xshift=0cm, yshift=7cm]current page.south west) % Titik tinggi di kiri
        -- cycle;
        
    \end{tikzpicture}
}

% Definisikan Custom Footer Style (myfooter)
\fancypagestyle{myfooter}{

    \fancyhf{} % Bersihkan header/footer
    \fancyfoot[C]{} % Hapus footer tengah
    \fancyfoot[R]{} % Hapus footer kanan
    \fancyfoot[L]{} % Hapus footer kiri
    % Tambahkan Kotak Metadata (di tengah)

    \fancyfoot[C]{
        % Kotak Metadata
        \begin{tabular}{|c|c|c|c|}
            \hline
            \small \FooterDocumentNoLabel: \@projectcode -\@documentnumber & \small \FooterRevisionNoLabel: \@revisionnumber & \small\FooterDateLabel: \@revdatefooter & \small \FooterPageLabel \thepage \ \PageOf \@\pageref{LastPage} \\

            \hline

        \end{tabular}

        

        \vspace{0.1cm}

        

        % Teks Hak Cipta

        \tiny
        \ITERAcopyright

    }

} 


% ----------------------------------------------------
% D. Lingkungan untuk Membuat Halaman Sampul (coverpage)
% ----------------------------------------------------
\newcommand{\coverpage}{
    % Definisikan semua teks statis di sini
    \newcommand{\instituteName}{INSTITUT TEKNOLOGI SUMATERA}
    \newcommand{\studyProgram}{PROGRAM STUDI TEKNIK ELEKTRO}
    \newcommand{\addressLineOne}{JL TERUSAN RYACUDU, DESA WAY HUWI, KECAMATAN JATI AGUNG}
    \newcommand{\addressLineTwo}{(0721) 8030188, (0721) 8030189 LAMPUNG SELATAN 35365}
 
    \newcommand{\publisherUnit}{Prodi Teknik Elektro – ITERA}
    \newcommand{\documentNote}{\iflanguage{english}
  {Note: This document’s distribution is controlled by the Electrical Engineering Program, ITERA.}
  {Catatan: Dokumen ini dikendalikan penyebarannya oleh Prodi Teknik Elektro ITERA.}}
    \newcommand{\logoPath}{image/doc/logo-itera.png} % Ganti path ini jika perlu
    \newcommand{\logoProdi}{image/doc/prodi.png} % <-- TAMBAHKAN LOGO KEDUA DI SINI
   
    % --- Header/Kode Proyek ---
    \begin{center}
        \vspace*{0.5cm} 
        \textbf{\Large \@projectcode : \@documentname}
    \end{center}
    \hrule 

    \vspace{0.8cm}

    % --- Logo dan Alamat Institusi ---
    \begin{minipage}{0.10\textwidth}
        \includegraphics[width=\textwidth]{\logoPath}
    \end{minipage}%
     \begin{minipage}{0.10\textwidth} % <-- TAMBAHKAN Minipage untuk Logo 2 (Lebar diperkecil)
        \centering
        \includegraphics[width=\textwidth]{\logoProdi}
    \end{minipage}%
    \begin{minipage}{0.80\textwidth}
        \centering
        \textbf{\large \instituteName} \\
        \textbf{\large \studyProgram} \\
        \small \addressLineOne \\
        \small \addressLineTwo
    \end{minipage}

    \vspace{0.1cm}
    \hrule 

    \vspace{1.5cm}

    % --- Judul Dokumen ---
    \begin{center}
        \textbf{\large \DocHeaderTitle} \\
        \vspace{0.5cm}
        \textbf{\Large \@documenttitle}
    \end{center}

    \vspace{1.5cm}

    % --- Tabel Rincian Dokumen ---
    \begin{center}
        \begin{tabular}{|>{\bfseries}m{4.5cm}|m{10.5cm}|}
            \hline
            \ProjectNameTitle & \@capstonetitle \\
            \hline
            \ShortProjectNameTitle & \@shortname \\
            \hline
            \NotesTitle & \documentNote \\
            \hline
            \DocumentNoTitle & \@documentnumber \\
            \hline
            \RevisionNoTitle & \@revisionnumber \\
            \hline
            \PublishedDateTitle & \@publicationdate \\
            \hline
            \PublisherTitle & \publisherUnit \\
            \hline
            \NumberOfPagesTitle & \pageref{LastPage} \\
            & \IncludingCoverNote \\
            \hline
        \end{tabular}
    \end{center}
    \thispagestyle{myfooter}
    \vfill 
} % Akhir dari \coverpage

\newcommand{\approvalpage}{
    \pagestyle{empty} % Pastikan tidak ada header/footer standar
    \definecolor{iteraYellow}{HTML}{FCD65C} % Definisikan warna
    \thispagestyle{myfooter}
    % ===================================
    % Menggunakan TCOLORBOX untuk BOX KUNING
    % ===================================
    \begin{tcolorbox}[
        colback=white, colframe=black, boxrule=0.4pt,
        enhanced, sharp corners,
        title=\textbf{\ApprovalPageTitle},
        colbacktitle=iteraYellow!60, % Menggunakan warna yang sudah ada
        coltitle=black,
        fonttitle=\bfseries\sffamily\Large,
        left=6mm,right=6mm,top=2mm,bottom=4mm
    ]

    \noindent
    \begin{minipage}[t]{0.48\textwidth}
        \raggedright % Mengganti \RaggedRight yang error
        \textbf{\CreatedByTitle}\\[4mm] % Tambah spasi

        % --- Ketua Tim ---
        \textbf{\TeamLeaderTitle}\\[1mm]
        \PersonContent{\@ketuatimnama}{\@ketuatimnim}{\@ketuatimsig}
        \vspace{6mm} % Spasi antar personal

        \textbf{\TeamMemberTitle}\\[1mm]
        \PersonContent{\@anggotanamaI}{\@anggotanimI}{\@anggotasigI}
        \vspace{6mm}
        
        % --- Anggota Tim 2 (Diberi label Anggota Tim di atas namanya) ---
        
        \PersonContent{\@anggotanamaII}{\@anggotanimII}{\@anggotasigII}
        
    \end{minipage}\hfill
    \begin{minipage}[t]{0.48\textwidth}
        \raggedright % Mengganti \RaggedRight yang error
        \textbf{\ApprovedByTitle}\\[4mm] % Tambah spasi

        % --- Dosen Pembimbing I ---
        \textbf{\AdvisorOneTitle}\\[1mm]
        \PersonContent{\@pembimbingInama}{\@pembimbingInip}{\@pembimbingIsig}
        \vspace{6mm}

        % --- Dosen Pembimbing II ---
         \textbf{\AdvisorTwoTitle}\\[1mm]
        \PersonContent{\@pembimbingIInama}{\@pembimbingIInip}{\@pembimbingIIsig}

    \end{minipage}
    % =============================================================

    \vspace{4mm} % Spasi sebelum garis
    \hrule height 0.4pt
    \vspace{2mm}
    
    % --- Tanggal Persetujuan (Gunakan Variabel) ---
    \begin{flushright}
        \small \textbf{\DocApprovalDateTitle}\\
        \textbf{\@approvaldate} % MENGGUNAKAN VARIABEL
    \end{flushright}
    
    \end{tcolorbox}
    
}


% Ini harus didefinisikan di preamble (.cls)
\newcommand{\PersonContent}[3]{
   
    \vspace{15mm}
    \textbf{#1}\\
    #2\\
    
    
    
}

% Custom Command untuk Header Tabel
\newcommand{\tableheader}[1]{%
    \textbf{#1}%
}

% --- VARIABEL DATA PRIBADI (Untuk dipanggil di file .tex) ---
\newcommand{\@photoPath}{}
\newcommand{\photoPath}[1]{\renewcommand{\@photoPath}{#1}}

\newcommand{\@fullName}{}
\newcommand{\fullName}[1]{\renewcommand{\@fullName}{#1}}

\newcommand{\@email}{}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}


% --- LINGKUNGAN CV UTAMA ---

\newcommand{\makecv}{
    \begin{flushright}
        % Sisipkan foto di pojok kanan atas
        % Cek apakah path foto diisi
        \ifx\@photoPath\empty
            % Jika path kosong, sisakan ruang kosong
            \vspace{3.5cm} 
        \else
            % Jika ada path, masukkan gambar
            \includegraphics[width=3cm, height=3.5cm, keepaspectratio]{\@photoPath}
        \fi
    \end{flushright}

    \vspace{-1.5cm} 
    \begin{center}
        \textbf{\Huge CURRICULUM VITAE}
    \end{center}
    \vspace{0.5cm}

    % --- Personal Details ---
    \sectiontitle{Personal Details}
    \begin{tabularx}{\textwidth}{@{}l X}
        \tableheader{Full Name}         & : \@fullName \\
        \tableheader{Place, Date of Birth} & : \@dob \\
        \tableheader{Contact Address}   & : \@address \\
        \tableheader{Email}             & : \@email \\
        \tableheader{Phone Number}      & : \@phone \\
    \end{tabularx}
}



