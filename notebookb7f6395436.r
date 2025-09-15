{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "8da3a210",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2025-09-15T14:41:01.892185Z",
     "iopub.status.busy": "2025-09-15T14:41:01.890092Z",
     "iopub.status.idle": "2025-09-15T14:41:02.022982Z",
     "shell.execute_reply": "2025-09-15T14:41:02.021052Z"
    },
    "papermill": {
     "duration": 0.140502,
     "end_time": "2025-09-15T14:41:02.026484",
     "exception": false,
     "start_time": "2025-09-15T14:41:01.885982",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# This Python 3 environment comes with many helpful analytics libraries installed\n",
    "# It is defined by the kaggle/python Docker image: https://github.com/kaggle/docker-python\n",
    "# For example, here's several helpful packages to load\n",
    "\n",
    "\n",
    "# Input data files are available in the read-only \"../input/\" directory\n",
    "# For example, running this (by clicking run or pressing Shift+Enter) will list all files under the input directory\n",
    "\n",
    "# import os\n",
    "# for dirname, _, filenames in os.walk('/kaggle/input'):\n",
    "#     for filename in filenames:\n",
    "#         print(os.path.join(dirname, filename))\n",
    "\n",
    "# You can write up to 20GB to the current directory (/kaggle/working/) that gets preserved as output when you create a version using \"Save & Run All\" \n",
    "# You can also write temporary files to /kaggle/temp/, but they won't be saved outside of the current session"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "37be5520",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-09-15T14:41:02.062426Z",
     "iopub.status.busy": "2025-09-15T14:41:02.031848Z",
     "iopub.status.idle": "2025-09-15T14:41:02.139472Z",
     "shell.execute_reply": "2025-09-15T14:41:02.137723Z"
    },
    "papermill": {
     "duration": 0.113426,
     "end_time": "2025-09-15T14:41:02.141873",
     "exception": false,
     "start_time": "2025-09-15T14:41:02.028447",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'double'"
      ],
      "text/latex": [
       "'double'"
      ],
      "text/markdown": [
       "'double'"
      ],
      "text/plain": [
       "[1] \"double\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'numeric'"
      ],
      "text/latex": [
       "'numeric'"
      ],
      "text/markdown": [
       "'numeric'"
      ],
      "text/plain": [
       "[1] \"numeric\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " num [1:5] 1 2 3 4 5\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'integer'"
      ],
      "text/latex": [
       "'integer'"
      ],
      "text/markdown": [
       "'integer'"
      ],
      "text/plain": [
       "[1] \"integer\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'character'"
      ],
      "text/latex": [
       "'character'"
      ],
      "text/markdown": [
       "'character'"
      ],
      "text/plain": [
       "[1] \"character\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'logical'"
      ],
      "text/latex": [
       "'logical'"
      ],
      "text/markdown": [
       "'logical'"
      ],
      "text/plain": [
       "[1] \"logical\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'character'"
      ],
      "text/latex": [
       "'character'"
      ],
      "text/markdown": [
       "'character'"
      ],
      "text/plain": [
       "[1] \"character\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "3"
      ],
      "text/latex": [
       "3"
      ],
      "text/markdown": [
       "3"
      ],
      "text/plain": [
       "[1] 3"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>4</li><li>3</li><li>6</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 4\n",
       "\\item 3\n",
       "\\item 6\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 4\n",
       "2. 3\n",
       "3. 6\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 4 3 6"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Copy and paste the following code in R Editor\n",
    "# Execute each line at a time and observe the output\n",
    "x<-c(1,2,3,4,5) #numeric double\n",
    "typeof(x)\n",
    "length(x)\n",
    "class(x)\n",
    "str(x)\n",
    "x1<-c(1L,2L,3L,4L,5L) \n",
    "x2<-as.integer(x) #coerce x as numeric\n",
    "typeof(x2)\n",
    "y<-c(\"Tom\",\"Kim\",\"Harriet\", \"John\", \"Mary\") #character\n",
    "typeof(y)\n",
    "z<-c(TRUE, FALSE, TRUE, TRUE, FALSE)\n",
    "typeof(z)\n",
    "xx<-c(1.2, \"Nairobi\")\n",
    "xxx<-c(TRUE, 1.2, \"Kigali\")\n",
    "typeof(xxx)\n",
    "length(xxx) #vector length\n",
    "nchar(xxx) #number of characters"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "d504fa0b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-09-15T14:41:02.150388Z",
     "iopub.status.busy": "2025-09-15T14:41:02.148875Z",
     "iopub.status.idle": "2025-09-15T14:41:02.174735Z",
     "shell.execute_reply": "2025-09-15T14:41:02.172932Z"
    },
    "papermill": {
     "duration": 0.03259,
     "end_time": "2025-09-15T14:41:02.177118",
     "exception": false,
     "start_time": "2025-09-15T14:41:02.144528",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "      Sex Age   Weight Marital_status     Income\n",
      "1    Male  50 29.89141       Divorced  387.86625\n",
      "2  Female  22 46.57429         Single 2049.86032\n",
      "3    Male  12 27.89976       Divorced 9400.43198\n",
      "4    Male  36 48.36511       Divorced 3900.20004\n",
      "5  Female  56 63.56278         Single 5121.86548\n",
      "6    Male  19 59.72353         Single 8439.43499\n",
      "7    Male  46 51.10001       Divorced 4240.26649\n",
      "8    Male  23 53.98495        Married   23.45624\n",
      "9  Female  44 70.89693        Married 4896.14701\n",
      "10 Female  59 47.32899        Married 1929.05563\n"
     ]
    }
   ],
   "source": [
    "dataframe <- data.frame(\n",
    "  Sex = factor(sample(c(\"Male\", \"Female\"), 10, replace = TRUE)),\n",
    "  Age = sample(10:60, 10),\n",
    "  Weight = runif(10, 25, 80),\n",
    "  Marital_status = factor(sample(c(\"Single\", \"Married\", \"Divorced\"), 10, replace = TRUE)),\n",
    "  Income = runif(10, 0, 10000)\n",
    ")\n",
    "print (dataframe)\n"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 3.322527,
   "end_time": "2025-09-15T14:41:02.302057",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-09-15T14:40:58.979530",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
