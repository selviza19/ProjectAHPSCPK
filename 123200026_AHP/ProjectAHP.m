function varargout = ProjectAHP(varargin)
% PROJECTAHP MATLAB code for ProjectAHP.fig
%      PROJECTAHP, by itself, creates a new PROJECTAHP or raises the existing
%      singleton*.
%
%      H = PROJECTAHP returns the handle to a new PROJECTAHP or the handle to
%      the existing singleton*.
%
%      PROJECTAHP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTAHP.M with the given input arguments.
%
%      PROJECTAHP('Property','Value',...) creates a new PROJECTAHP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProjectAHP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProjectAHP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProjectAHP

% Last Modified by GUIDE v2.5 24-May-2022 11:48:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProjectAHP_OpeningFcn, ...
                   'gui_OutputFcn',  @ProjectAHP_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ProjectAHP is made visible.
function ProjectAHP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProjectAHP (see VARARGIN)

% Choose default command line output for ProjectAHP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProjectAHP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProjectAHP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Proses.
function Proses_Callback(hObject, eventdata, handles)
% hObject    handle to Proses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[num,txt,tabeldata] = xlsread('ProjectAHP.xlsx','H9:L12');

set(handles.uitable1,'data',tabeldata)


% --- Executes on button press in tampil.
function tampil_Callback(hObject, eventdata, handles)
% hObject    handle to tampil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[num,txt,tabeldata] = xlsread('ProjectAHP.xlsx','B3:F6');

set(handles.uitable2,'data',tabeldata)


% --- Executes on button press in eigen.
function eigen_Callback(hObject, eventdata, handles)
% hObject    handle to eigen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[num,txt,tabeldata] = xlsread('ProjectAHP.xlsx','B60:G63');

set(handles.uitable3,'data',tabeldata)


% --- Executes on button press in hasil.
function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[num,txt,tabeldata] = xlsread('ProjectAHP.xlsx','I60:J63');

set(handles.uitable5,'data',tabeldata)


% --- Executes on button press in kriteria.
function kriteria_Callback(hObject, eventdata, handles)
% hObject    handle to kriteria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[num,txt,tabeldata] = xlsread('ProjectAHP.xlsx','O9:O12');

set(handles.uitable6,'data',tabeldata)
