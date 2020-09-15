CREATE TABLE ���������
(
  ������������_��������� INT NOT NULL,
  ����� INT NOT NULL,
  ����������� INT NOT NULL,
  ���_��������� INT NOT NULL,
  ���������� INT NOT NULL,
  PRIMARY KEY (���_���������)
);

CREATE TABLE ������
(
  ���_������ INT NOT NULL,
  ������������ INT NOT NULL,
  �������� INT NOT NULL,
  ����������� INT NOT NULL,
  ���������� INT NOT NULL,
  PRIMARY KEY (���_������)
);

CREATE TABLE �����_����
(
  ���_����� INT NOT NULL,
  ������������ INT NOT NULL,
  �����_�������������� INT NOT NULL,
  ������_������������� INT NOT NULL,
  ����_������_������������ INT NOT NULL,
  ����_���������_������������ INT NOT NULL,
  ������������� INT NOT NULL,
  ��������� INT NOT NULL,
  �������� INT NOT NULL,
  PRIMARY KEY (���_�����)
);

CREATE TABLE ��������
(
  ���_�������� INT NOT NULL,
  ��� INT NOT NULL,
  ����_�������� INT NOT NULL,
  ����� INT NOT NULL,
  ����������_������ INT NOT NULL,
  �����_�������������_������������� INT NOT NULL,
  ����_������_������������� INT NOT NULL,
  ����_���������_������������� INT NOT NULL,
  ���������_������������� INT NOT NULL,
  �������� INT NOT NULL,
  ���_���������� INT NOT NULL,
  PRIMARY KEY (���_��������),
  UNIQUE (����������_������),
  UNIQUE (�����_�������������_�������������)
);

CREATE TABLE ����������
(
  ���_���������� INT NOT NULL,
  ��� INT NOT NULL,
  ������� INT NOT NULL,
  ��� INT NOT NULL,
  ����� INT NOT NULL,
  ������� INT NOT NULL,
  ����������_������ INT NOT NULL,
  ���_��������� INT NOT NULL,
  ���_������ INT NOT NULL,
  PRIMARY KEY (���_����������),
  FOREIGN KEY (���_���������) REFERENCES ���������(���_���������),
  FOREIGN KEY (���_������) REFERENCES ������(���_������),
  UNIQUE (����������_������)
);

CREATE TABLE ����������
(
  ���_���������� INT NOT NULL,
  ���������������_����� INT NOT NULL,
  �����_������ INT NOT NULL,
  �����_��������� INT NOT NULL,
  �����_����������� INT NOT NULL,
  ����_������� INT NOT NULL,
  ����_����������� INT NOT NULL,
  ���� INT NOT NULL,
  �����������_������ INT NOT NULL,
  ����_������������_������� INT NOT NULL,
  �������� INT NOT NULL,
  ���_����� INT NOT NULL,
  ���_���������� INT NOT NULL,
  ���_�������� INT NOT NULL,
  PRIMARY KEY (���_����������),
  FOREIGN KEY (���_�����) REFERENCES �����_����(���_�����),
  FOREIGN KEY (���_����������) REFERENCES ����������(���_����������),
  FOREIGN KEY (���_��������) REFERENCES ��������(���_��������),
  UNIQUE (�����_������),
  UNIQUE (�����_���������)
);

CREATE TABLE ����������_�_�����
(
  ����_����� INT NOT NULL,
  ����_��������� INT NOT NULL,
  ��������������_����� INT NOT NULL,
  �������_��_���������� INT NOT NULL,
  ����_���������� INT NOT NULL,
  ���_���������� INT NOT NULL,
  ���_���������� INT NOT NULL,
  ���_�������� INT NOT NULL,
  FOREIGN KEY (���_����������) REFERENCES ����������(���_����������),
  FOREIGN KEY (���_��������) REFERENCES ��������(���_��������)
);