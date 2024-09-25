FROM python:3.10

WORKDIR /the_workdir

COPY requirements.txt .

COPY b_script.sh .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY ./mace ./mace

RUN pip install ./mace

RUN git clone https://github.com/davkovacs/BOTNet-datasets.git

RUN wget --no-check-certificate https://github.com/BingqingCheng/ab-initio-thermodynamics-of-water/blob/master/training-set/dataset_1593.xyz -P /the_workdir

CMD /the_workdir/b_script.sh
