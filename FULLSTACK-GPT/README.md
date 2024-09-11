# Fullstack GPT

랭체인으로 AI 웹서비스 7개 만들기

## 무엇을 배우나요?

GPT-4, Langchain 을 활용하여 AI 웹서비스를 구축

- Langchain, Language Models 에 대한 기본 이해
- 자체 데이터에 GPT-4를 사용하는 방법
- 커스텀 자율 에이전트(Autonomous Agent)를 만드는 방법

### 가상환경 만들기

#### 1. 파이썬 설치

아직 컴퓨터에 Python 이 설치되지 않았다면 [공식 Python 웹사이트](https://www.python.org/downloads/) 에서 다운로드할 수 있습니다.

#### 2. 가상 환경 생성

내장 `venv`모듈을 사용하여 가상 환경을 만들 수 있습니다. 다음 명령을 실행하세요.

```sh
python -m venv ./env
```

#### 3. 가상 환경 활성화

가상 환경을 만든 후에는 패키지를 설치하거나 가상 환경 내에서 코드를 실행하기 전에 가상 환경을 활성화해야 합니다.

- Windows 의 경우:

```sh
env\Scripts\activate.bat
```

- macOS/Linux 의 경우:

```sh
source env/bin/activate
```

환경이 활성화되면 명령 프롬프트에 다음과 같이 환경 이름이 표시됩니다.

```sh
(myenv) $
```

#### 4. 가상 환경 내에 패키지 설치

가상 환경이 활성화되면 `pip`를 사용하여 모든 패키지를 설치할 수 있습니다.

```sh
pip install requests
```

`requirements.txt` 파일에서 모든 종속성을 설치하려면 다음과 같이 하세요.

```sh
pip install -r requirements.txt
```

이러한 패키지는 가상 환경에만 설치되며 글로벌 Python 설치에는 영향을 미치지 않습니다.

#### 5. 가상 환경 비활성화

작업이 끝나면 다음을 입력하여 가상 환경을 비활성화할 수 있습니다.

```sh
deactivate
```

#### 6. 가상 환경 삭제

더 이상 가상 환경이 필요하지 않으면 폴더를 삭제하기만 하면 됩니다.

- Windows/macOS/Linux의 경우:

```sh
rm -rf env
```

### jupyter Notebooks

1. notebook.ipynb 파일 생성
2. Select Kernel 클릭 후 가상 환경 선택
