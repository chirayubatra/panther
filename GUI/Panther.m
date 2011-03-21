function varargout = Panther(varargin)
% PANTHER MATLAB code for Panther.fig
%      PANTHER, by itself, creates a new PANTHER or raises the existing
%      singleton*.
%
%      H = PANTHER returns the handle to a new PANTHER or the handle to
%      the existing singleton*.
%
%      PANTHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PANTHER.M with the given input arguments.
%
%      PANTHER('Property','Value',...) creates a new PANTHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Panther_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Panther_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Panther

% Last Modified by GUIDE v2.5 14-Mar-2011 19:15:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Panther_OpeningFcn, ...
                   'gui_OutputFcn',  @Panther_OutputFcn, ...
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


% --- Executes just before Panther is made visible.
function Panther_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Panther (see VARARGIN)

% Choose default command line output for Panther
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Panther wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% Load the warnings and default windows
h = hgload('Warning.fig');
% Get the children of the figure
child_handles = allchild(h);
% Clone the objects into the main screen
copyobj(child_handles, handles.Warning_Panel);


% --- Outputs from this function are returned to the command line.
function varargout = Panther_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Control_Callback(hObject, eventdata, handles)
% hObject    handle to Control (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Save_Profile_Callback(hObject, eventdata, handles)
% hObject    handle to Save_Profile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Load_Profile_Callback(hObject, eventdata, handles)
% hObject    handle to Load_Profile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Run_Simulation_Callback(hObject, eventdata, handles)
% hObject    handle to Run_Simulation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%% Convert between the popupmenu item # and the window to load
function name = popmenu_to_name(menu_item)
    if menu_item == 1,
        name = 'MainScreen';
    elseif menu_item == 2,
        name = 'ControlRods';
    elseif menu_item == 3,
        name = 'Instrumentation';
    elseif menu_item == 4,
        name = 'CoreModel';
    elseif menu_item == 5,
        name = 'Log';
    end
    
% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get the figure name
fig_names = cellstr(get(hObject,'String'));
fig_to_load = get(hObject, 'Value');
fig_name = popmenu_to_name(fig_to_load);
% Load the figure
h = hgload(fig_name);
% Get the children of the figure
child_handles = allchild(h);
% Remove old data
panel_children = get(handles.LeftPanel, 'Children');
delete(panel_children);
% Clone the object
copyobj(child_handles, handles.LeftPanel);
% Clean up
close(h);
% Set the name of the panel to the selected figure
set(handles.LeftPanel, 'Title', fig_names(fig_to_load))

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get the figure name
fig_names = cellstr(get(hObject,'String'));
fig_to_load = get(hObject, 'Value');
fig_name = popmenu_to_name(fig_to_load);
% Load the figure
h = hgload(fig_name);
% Get the children of the figure
child_handles = allchild(h);
% Remove old data
panel_children = get(handles.RightPanel, 'Children');
delete(panel_children);
% Clone the object
copyobj(child_handles, handles.RightPanel);
% Clean up
close(h);
% Set the name of the panel to the selected figure
set(handles.RightPanel, 'Title', fig_names(fig_to_load))


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Help_Callback(hObject, eventdata, handles)
% hObject    handle to Help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Manul_Callback(hObject, eventdata, handles)
% hObject    handle to Manul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
