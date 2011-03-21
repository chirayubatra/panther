function varargout = CoreModel(varargin)
% COREMODEL M-file for CoreModel.fig
%      COREMODEL, by itself, creates a new COREMODEL or raises the existing
%      singleton*.
%
%      H = COREMODEL returns the handle to a new COREMODEL or the handle to
%      the existing singleton*.
%
%      COREMODEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COREMODEL.M with the given input arguments.
%
%      COREMODEL('Property','Value',...) creates a new COREMODEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CoreModel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CoreModel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CoreModel

% Last Modified by GUIDE v2.5 14-Mar-2011 18:55:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CoreModel_OpeningFcn, ...
                   'gui_OutputFcn',  @CoreModel_OutputFcn, ...
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


% --- Executes just before CoreModel is made visible.
function CoreModel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CoreModel (see VARARGIN)

% Choose default command line output for CoreModel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CoreModel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CoreModel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
