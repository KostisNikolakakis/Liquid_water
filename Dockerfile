FROM python:3.10

WORKDIR /the_workdir

COPY requirements.txt .

COPY b_script.sh .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY ./mace ./mace

RUN pip install ./mace

RUN git clone https://github.com/davkovacs/BOTNet-datasets.git

CMD /the_workdir/b_script.sh
