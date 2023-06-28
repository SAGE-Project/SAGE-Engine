from setuptools import setup, find_packages

setup(
    name="sage-rec-engine",
    version="0.2",
    packages=find_packages(),
    description="Automated cloud deployment",
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    author="Madalina Erascu",
    author_email="madalina.erascu@e-uvt.ro",
    url="https://github.com/SAGE-Project/SAGE-Engine",
    classifiers=[
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.8',
    ],
)