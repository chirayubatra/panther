function varargout = Warning(varargin)
% WARNING M-file for Warning.fig
%      WARNING, by itself, creates a new WARNING or raises the existing
%      singleton*.
%
%      H = WARNING returns the handle to a new WARNING or the handle to
%      the existing singleton*.
%
%      WARNING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WARNING.M with the given input arguments.
%
%      WARNING('Property','Value',...) creates a new WARNING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Warning_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Warning_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Warning

% Last Modified by GUIDE v2.5 14-Mar-2011 18:22:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Warning_OpeningFcn, ...
                   'gui_OutputFcn',  @Warning_OutputFcn, ...
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


% --- Executes just before Warning is made visible.
function Warning_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Warning (see VARARGIN)

% Choose default command line output for Warning
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Warning wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Warning_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in PRC_Indicator.
function PRC_Indicator_Callback(hObject, eventdata, handles)
% hObject    handle to PRC_Indicator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PSG_Indicator.
function PSG_Indicator_Callback(hObject, eventdata, handles)
% hObject    handle to PSG_Indicator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SSG_Indicator.
function SSG_Indicator_Callback(hObject, eventdata, handles)
% hObject    handle to SSG_Indicator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
