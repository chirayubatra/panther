function varargout = MainScreen(varargin)
% MAINSCREEN M-file for MainScreen.fig
%      MAINSCREEN, by itself, creates a new MAINSCREEN or raises the existing
%      singleton*.
%
%      H = MAINSCREEN returns the handle to a new MAINSCREEN or the handle to
%      the existing singleton*.
%
%      MAINSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINSCREEN.M with the given input arguments.
%
%      MAINSCREEN('Property','Value',...) creates a new MAINSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainScreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainScreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainScreen

% Last Modified by GUIDE v2.5 14-Mar-2011 19:04:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainScreen_OpeningFcn, ...
                   'gui_OutputFcn',  @MainScreen_OutputFcn, ...
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


% --- Executes just before MainScreen is made visible.
function MainScreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainScreen (see VARARGIN)

% Choose default command line output for MainScreen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MainScreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MainScreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
