unit ExtMenu;

// Generated by ExtToPascal v.0.9.8, at 12/3/2010 16:44:12
// from "C:\Trabalho\ext-3.1.0\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, Ext;

type
  TExtMenuMenuMgrSingleton = class;
  TExtMenuBaseItem = class;
  TExtMenuSeparator = class;
  TExtMenuTextItem = class;
  TExtMenuItem = class;
  TExtMenuCheckItem = class;
  TExtMenuMenu = class;
  TExtMenuColorMenu = class;
  TExtMenuDateMenu = class;

  TExtMenuMenuMgrSingleton = class(TExtFunction)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    function Get(Menu : String) : TExtFunction; overload;
    function Get(Menu : TExtObject) : TExtFunction; overload;
    function HideAll : TExtFunction;
  end;

  // Procedural types for events TExtMenuBaseItem
  TExtMenuBaseItemOnActivate = procedure(This : TExtMenuBaseItem) of object;
  TExtMenuBaseItemOnClick = procedure(This : TExtMenuBaseItem; E : TExtEventObjectSingleton) of object;
  TExtMenuBaseItemOnDeactivate = procedure(This : TExtMenuBaseItem) of object;

  TExtMenuBaseItem = class(TExtComponent)
  private
    FActiveClass : String; // 'x-menu-item-active'
    FCanActivate : Boolean;
    FClickHideDelay : Integer; // 100
    FHandler : TExtFunction;
    FHideOnClick : Boolean; // true
    FScope : TExtObject;
    FParentMenu : TExtMenuMenu;
    FOnActivate : TExtMenuBaseItemOnActivate;
    FOnClick : TExtMenuBaseItemOnClick;
    FOnDeactivate : TExtMenuBaseItemOnDeactivate;
    procedure SetFActiveClass(Value : String);
    procedure SetFCanActivate(Value : Boolean);
    procedure SetFClickHideDelay(Value : Integer);
    procedure SetFHandler(Value : TExtFunction);
    procedure SetFHideOnClick(Value : Boolean);
    procedure SetFScope(Value : TExtObject);
    procedure SetFParentMenu(Value : TExtMenuMenu);
    procedure SetFOnActivate(Value : TExtMenuBaseItemOnActivate);
    procedure SetFOnClick(Value : TExtMenuBaseItemOnClick);
    procedure SetFOnDeactivate(Value : TExtMenuBaseItemOnDeactivate);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function SetHandler(Handler : TExtFunction; Scope : TExtObject) : TExtFunction;
    destructor Destroy; override;
    property ActiveClass : String read FActiveClass write SetFActiveClass;
    property CanActivate : Boolean read FCanActivate write SetFCanActivate;
    property ClickHideDelay : Integer read FClickHideDelay write SetFClickHideDelay;
    property Handler : TExtFunction read FHandler write SetFHandler;
    property HideOnClick : Boolean read FHideOnClick write SetFHideOnClick;
    property Scope : TExtObject read FScope write SetFScope;
    property ParentMenu : TExtMenuMenu read FParentMenu write SetFParentMenu;
    property OnActivate : TExtMenuBaseItemOnActivate read FOnActivate write SetFOnActivate;
    property OnClick : TExtMenuBaseItemOnClick read FOnClick write SetFOnClick;
    property OnDeactivate : TExtMenuBaseItemOnDeactivate read FOnDeactivate write SetFOnDeactivate;
  end;

  TExtMenuSeparator = class(TExtMenuBaseItem)
  private
    FHideOnClick : Boolean;
    FItemCls : String; // 'x-menu-sep'
    procedure SetFHideOnClick(Value : Boolean);
    procedure SetFItemCls(Value : String);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    property HideOnClick : Boolean read FHideOnClick write SetFHideOnClick;
    property ItemCls : String read FItemCls write SetFItemCls;
  end;

  TExtMenuTextItem = class(TExtMenuBaseItem)
  private
    FHideOnClick : Boolean;
    FItemCls : String; // 'x-menu-text'
    FText : String;
    procedure SetFHideOnClick(Value : Boolean);
    procedure SetFItemCls(Value : String);
    procedure SetFText(Value : String);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    property HideOnClick : Boolean read FHideOnClick write SetFHideOnClick;
    property ItemCls : String read FItemCls write SetFItemCls;
    property Text : String read FText write SetFText;
  end;

  TExtMenuItem = class(TExtMenuBaseItem)
  private
    FCanActivate : Boolean; // true
    FHref : String; // '#'
    FHrefTarget : String;
    FIcon : String;
    FIconCls : String;
    FItemCls : String; // 'x-menu-item'
    FMenu : TExtMenuMenu;
    FShowDelay : Integer; // 200
    FText : String;
    FMenu_ : TExtMenuMenu;
    procedure SetFCanActivate(Value : Boolean);
    procedure SetFHref(Value : String);
    procedure SetFHrefTarget(Value : String);
    procedure SetFIcon(Value : String);
    procedure SetFIconCls(Value : String);
    procedure SetFItemCls(Value : String);
    procedure SetFMenu(Value : TExtMenuMenu);
    procedure SetFShowDelay(Value : Integer);
    procedure SetFText(Value : String);
    procedure SetFMenu_(Value : TExtMenuMenu);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function SetIconClass(Cls : String) : TExtFunction;
    function SetText(Text : String) : TExtFunction;
    destructor Destroy; override;
    property CanActivate : Boolean read FCanActivate write SetFCanActivate;
    property Href : String read FHref write SetFHref;
    property HrefTarget : String read FHrefTarget write SetFHrefTarget;
    property Icon : String read FIcon write SetFIcon;
    property IconCls : String read FIconCls write SetFIconCls;
    property ItemCls : String read FItemCls write SetFItemCls;
    property Menu : TExtMenuMenu read FMenu write SetFMenu;
    property ShowDelay : Integer read FShowDelay write SetFShowDelay;
    property Text : String read FText write SetFText;
    property Menu_ : TExtMenuMenu read FMenu_ write SetFMenu_;
  end;

  // Procedural types for events TExtMenuCheckItem
  TExtMenuCheckItemOnBeforecheckchange = procedure(This : TExtMenuCheckItem; Checked : Boolean) of object;
  TExtMenuCheckItemOnCheckchange = procedure(This : TExtMenuCheckItem; Checked : Boolean) of object;

  TExtMenuCheckItem = class(TExtMenuItem)
  private
    FChecked : Boolean;
    FGroup : String;
    FGroupClass : String; // 'x-menu-group-item'
    FItemCls : String; // 'x-menu-item x-menu-check-item'
    FOnBeforecheckchange : TExtMenuCheckItemOnBeforecheckchange;
    FOnCheckchange : TExtMenuCheckItemOnCheckchange;
    procedure SetFChecked(Value : Boolean);
    procedure SetFGroup(Value : String);
    procedure SetFGroupClass(Value : String);
    procedure SetFItemCls(Value : String);
    procedure SetFOnBeforecheckchange(Value : TExtMenuCheckItemOnBeforecheckchange);
    procedure SetFOnCheckchange(Value : TExtMenuCheckItemOnCheckchange);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function CheckHandler(This : TExtMenuCheckItem; Checked : Boolean) : TExtFunction;
    function SetChecked(Checked : Boolean; SuppressEvent : Boolean = false) : TExtFunction;
    property Checked : Boolean read FChecked write SetFChecked;
    property Group : String read FGroup write SetFGroup;
    property GroupClass : String read FGroupClass write SetFGroupClass;
    property ItemCls : String read FItemCls write SetFItemCls;
    property OnBeforecheckchange : TExtMenuCheckItemOnBeforecheckchange read FOnBeforecheckchange write SetFOnBeforecheckchange;
    property OnCheckchange : TExtMenuCheckItemOnCheckchange read FOnCheckchange write SetFOnCheckchange;
  end;

  // Procedural types for events TExtMenuMenu
  TExtMenuMenuOnClick = procedure(This : TExtMenuMenu; MenuItem : TExtMenuItem; E : TExtEventObjectSingleton) of object;
  TExtMenuMenuOnItemclick = procedure(BaseItem : TExtMenuBaseItem; E : TExtEventObjectSingleton) of object;
  TExtMenuMenuOnMouseout = procedure(This : TExtMenuMenu; E : TExtEventObjectSingleton; MenuItem : TExtMenuItem) of object;
  TExtMenuMenuOnMouseover = procedure(This : TExtMenuMenu; E : TExtEventObjectSingleton; MenuItem : TExtMenuItem) of object;

  TExtMenuMenu = class(TExtContainer)
  private
    FAllowOtherMenus : Boolean;
    FDefaultAlign : String; // 'tl-bl?'
    FDefaultOffsets : TExtObjectList;
    FDefaults : TExtObject;
    FEnableScrolling : Boolean; // true
    FFloating : Boolean;
    FIgnoreParentClicks : Boolean;
    FItems : TExtObjectList;
    FLayout : String;
    FLayoutObject : TExtObject;
    FMaxHeight : Integer;
    FMinWidth : Integer; // 120
    FPlain : Boolean;
    FScrollIncrement : Integer; // 24
    FShadow : Boolean;
    FShadowString : String;
    FShowSeparator : Boolean; // true
    FSubMenuAlign : String; // 'tl-tr?'
    FOnClick : TExtMenuMenuOnClick;
    FOnItemclick : TExtMenuMenuOnItemclick;
    FOnMouseout : TExtMenuMenuOnMouseout;
    FOnMouseover : TExtMenuMenuOnMouseover;
    procedure SetFAllowOtherMenus(Value : Boolean);
    procedure SetFDefaultAlign(Value : String);
    procedure SetFDefaultOffsets(Value : TExtObjectList);
    procedure SetFDefaults(Value : TExtObject);
    procedure SetFEnableScrolling(Value : Boolean);
    procedure SetFFloating(Value : Boolean);
    procedure SetFIgnoreParentClicks(Value : Boolean);
    procedure SetFItems(Value : TExtObjectList);
    procedure SetFLayout(Value : String);
    procedure SetFLayoutObject(Value : TExtObject);
    procedure SetFMaxHeight(Value : Integer);
    procedure SetFMinWidth(Value : Integer);
    procedure SetFPlain(Value : Boolean);
    procedure SetFScrollIncrement(Value : Integer);
    procedure SetFShadow(Value : Boolean);
    procedure SetFShadowString(Value : String);
    procedure SetFShowSeparator(Value : Boolean);
    procedure SetFSubMenuAlign(Value : String);
    procedure SetFOnClick(Value : TExtMenuMenuOnClick);
    procedure SetFOnItemclick(Value : TExtMenuMenuOnItemclick);
    procedure SetFOnMouseout(Value : TExtMenuMenuOnMouseout);
    procedure SetFOnMouseover(Value : TExtMenuMenuOnMouseover);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function AddElement(El : String) : TExtFunction;
    function AddItem(Item : TExtMenuItem) : TExtFunction;
    function AddMenuItem(Config : TExtObject = nil) : TExtFunction;
    function AddSeparator : TExtFunction;
    function AddText(Text : String) : TExtFunction;
    function Hide(Deep : Boolean = false) : TExtFunction;
    function Show(Element : String; Position : String = ''; ParentMenu : TExtMenuMenu = nil) : TExtFunction;
    function ShowAt(XyPosition : TExtObjectList; ParentMenu : TExtMenuMenu = nil) : TExtFunction;
    destructor Destroy; override;
    property AllowOtherMenus : Boolean read FAllowOtherMenus write SetFAllowOtherMenus;
    property DefaultAlign : String read FDefaultAlign write SetFDefaultAlign;
    property DefaultOffsets : TExtObjectList read FDefaultOffsets write SetFDefaultOffsets;
    property Defaults : TExtObject read FDefaults write SetFDefaults;
    property EnableScrolling : Boolean read FEnableScrolling write SetFEnableScrolling;
    property Floating : Boolean read FFloating write SetFFloating;
    property IgnoreParentClicks : Boolean read FIgnoreParentClicks write SetFIgnoreParentClicks;
    property Items : TExtObjectList read FItems write SetFItems;
    property Layout : String read FLayout write SetFLayout;
    property LayoutObject : TExtObject read FLayoutObject write SetFLayoutObject;
    property MaxHeight : Integer read FMaxHeight write SetFMaxHeight;
    property MinWidth : Integer read FMinWidth write SetFMinWidth;
    property Plain : Boolean read FPlain write SetFPlain;
    property ScrollIncrement : Integer read FScrollIncrement write SetFScrollIncrement;
    property Shadow : Boolean read FShadow write SetFShadow;
    property ShadowString : String read FShadowString write SetFShadowString;
    property ShowSeparator : Boolean read FShowSeparator write SetFShowSeparator;
    property SubMenuAlign : String read FSubMenuAlign write SetFSubMenuAlign;
    property OnClick : TExtMenuMenuOnClick read FOnClick write SetFOnClick;
    property OnItemclick : TExtMenuMenuOnItemclick read FOnItemclick write SetFOnItemclick;
    property OnMouseout : TExtMenuMenuOnMouseout read FOnMouseout write SetFOnMouseout;
    property OnMouseover : TExtMenuMenuOnMouseover read FOnMouseover write SetFOnMouseover;
  end;

  // Procedural types for events TExtMenuColorMenu
  TExtMenuColorMenuOnSelect = procedure(Palette : TExtColorPalette; Color : String) of object;

  TExtMenuColorMenu = class(TExtMenuMenu)
  private
    FHandler : TExtFunction;
    FHideOnClick : Boolean;
    FPaletteId : String;
    FScope : TExtObject;
    FPalette : TExtColorPalette;
    FOnSelect : TExtMenuColorMenuOnSelect;
    procedure SetFHandler(Value : TExtFunction);
    procedure SetFHideOnClick(Value : Boolean);
    procedure SetFPaletteId(Value : String);
    procedure SetFScope(Value : TExtObject);
    procedure SetFPalette(Value : TExtColorPalette);
    procedure SetFOnSelect(Value : TExtMenuColorMenuOnSelect);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    destructor Destroy; override;
    property Handler : TExtFunction read FHandler write SetFHandler;
    property HideOnClick : Boolean read FHideOnClick write SetFHideOnClick;
    property PaletteId : String read FPaletteId write SetFPaletteId;
    property Scope : TExtObject read FScope write SetFScope;
    property Palette : TExtColorPalette read FPalette write SetFPalette;
    property OnSelect : TExtMenuColorMenuOnSelect read FOnSelect write SetFOnSelect;
  end;

  // Procedural types for events TExtMenuDateMenu
  TExtMenuDateMenuOnSelect = procedure(Picker : TExtDatePicker; Date : TDateTime) of object;

  TExtMenuDateMenu = class(TExtMenuMenu)
  private
    FHandler : TExtFunction;
    FHideOnClick : Boolean;
    FPickerId : String;
    FScope : TExtObject;
    FPicker : TExtDatePicker;
    FOnSelect : TExtMenuDateMenuOnSelect;
    procedure SetFHandler(Value : TExtFunction);
    procedure SetFHideOnClick(Value : Boolean);
    procedure SetFPickerId(Value : String);
    procedure SetFScope(Value : TExtObject);
    procedure SetFPicker(Value : TExtDatePicker);
    procedure SetFOnSelect(Value : TExtMenuDateMenuOnSelect);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    destructor Destroy; override;
    property Handler : TExtFunction read FHandler write SetFHandler;
    property HideOnClick : Boolean read FHideOnClick write SetFHideOnClick;
    property PickerId : String read FPickerId write SetFPickerId;
    property Scope : TExtObject read FScope write SetFScope;
    property Picker : TExtDatePicker read FPicker write SetFPicker;
    property OnSelect : TExtMenuDateMenuOnSelect read FOnSelect write SetFOnSelect;
  end;

var
  ExtMenuMenuMgr : TExtMenuMenuMgrSingleton;

implementation

function TExtMenuMenuMgrSingleton.JSClassName : string; begin
  Result := 'Ext.menu.MenuMgr';
end;

{$IFDEF FPC}constructor TExtMenuMenuMgrSingleton.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtMenuMenuMgrSingleton.Get(Menu : String) : TExtFunction; begin
  JSCode(JSName + '.get(' + VarToJSON([Menu]) + ');', 'TExtMenuMenuMgrSingleton');
  Result := Self;
end;

function TExtMenuMenuMgrSingleton.Get(Menu : TExtObject) : TExtFunction; begin
  JSCode(JSName + '.get(' + VarToJSON([Menu, false]) + ');', 'TExtMenuMenuMgrSingleton');
  Result := Self;
end;

function TExtMenuMenuMgrSingleton.HideAll : TExtFunction; begin
  JSCode(JSName + '.hideAll();', 'TExtMenuMenuMgrSingleton');
  Result := Self;
end;

procedure TExtMenuBaseItem.SetFActiveClass(Value : String); begin
  FActiveClass := Value;
  JSCode('activeClass:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFCanActivate(Value : Boolean); begin
  FCanActivate := Value;
  JSCode('canActivate:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFClickHideDelay(Value : Integer); begin
  FClickHideDelay := Value;
  JSCode('clickHideDelay:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFHandler(Value : TExtFunction); begin
  FHandler := Value;
  if not ConfigAvailable(JSName) then
    SetHandler(Value, nil)
  else
    JSCode('handler:' + VarToJSON([Value, true]));
end;

procedure TExtMenuBaseItem.SetFHideOnClick(Value : Boolean); begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFScope(Value : TExtObject); begin
  FScope := Value;
  Value.DeleteFromGarbage;
  JSCode('scope:' + VarToJSON([Value, false]));
end;

procedure TExtMenuBaseItem.SetFParentMenu(Value : TExtMenuMenu); begin
  FParentMenu := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.parentMenu=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtMenuBaseItem.SetFOnActivate(Value : TExtMenuBaseItemOnActivate); begin
  if Assigned(FOnActivate) then
    JSCode(JSName+'.events ["activate"].listeners=[];');
  if Assigned(Value) then
    On('activate', Ajax('activate', ['This', '%0.nm'], true));
  FOnActivate := Value;
end;

procedure TExtMenuBaseItem.SetFOnClick(Value : TExtMenuBaseItemOnClick); begin
  if Assigned(FOnClick) then
    JSCode(JSName+'.events ["click"].listeners=[];');
  if Assigned(Value) then
    On('click', Ajax('click', ['This', '%0.nm','E', '%1.nm'], true));
  FOnClick := Value;
end;

procedure TExtMenuBaseItem.SetFOnDeactivate(Value : TExtMenuBaseItemOnDeactivate); begin
  if Assigned(FOnDeactivate) then
    JSCode(JSName+'.events ["deactivate"].listeners=[];');
  if Assigned(Value) then
    On('deactivate', Ajax('deactivate', ['This', '%0.nm'], true));
  FOnDeactivate := Value;
end;

function TExtMenuBaseItem.JSClassName : string; begin
  Result := 'Ext.menu.BaseItem';
end;

procedure TExtMenuBaseItem.InitDefaults; begin
  inherited;
  FActiveClass := 'x-menu-item-active';
  FClickHideDelay := 100;
  FHideOnClick := true;
  FScope := TExtObject.CreateInternal(Self, 'scope');
  FParentMenu := TExtMenuMenu.CreateInternal(Self, 'parentMenu');
end;

{$IFDEF FPC}constructor TExtMenuBaseItem.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuBaseItem.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtMenuBaseItem.SetHandler(Handler : TExtFunction; Scope : TExtObject) : TExtFunction; begin
  JSCode(JSName + '.setHandler(' + VarToJSON([Handler, true, Scope, false]) + ');', 'TExtMenuBaseItem');
  Result := Self;
end;

destructor TExtMenuBaseItem.Destroy; begin
  try
    FScope.Free;
    FParentMenu.Free;
  except end;
  inherited;
end;

procedure TExtMenuBaseItem.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'activate') and Assigned(FOnActivate) then
    FOnActivate(TExtMenuBaseItem(ParamAsObject('This')))
  else if (AEvtName = 'click') and Assigned(FOnClick) then
    FOnClick(TExtMenuBaseItem(ParamAsObject('This')), ExtEventObject)
  else if (AEvtName = 'deactivate') and Assigned(FOnDeactivate) then
    FOnDeactivate(TExtMenuBaseItem(ParamAsObject('This')));
end;

procedure TExtMenuSeparator.SetFHideOnClick(Value : Boolean); begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuSeparator.SetFItemCls(Value : String); begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

function TExtMenuSeparator.JSClassName : string; begin
  Result := 'Ext.menu.Separator';
end;

procedure TExtMenuSeparator.InitDefaults; begin
  inherited;
  FItemCls := 'x-menu-sep';
end;

{$IFDEF FPC}constructor TExtMenuSeparator.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuSeparator.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

procedure TExtMenuTextItem.SetFHideOnClick(Value : Boolean); begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuTextItem.SetFItemCls(Value : String); begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

procedure TExtMenuTextItem.SetFText(Value : String); begin
  FText := Value;
  JSCode('text:' + VarToJSON([Value]));
end;

function TExtMenuTextItem.JSClassName : string; begin
  Result := 'Ext.menu.TextItem';
end;

procedure TExtMenuTextItem.InitDefaults; begin
  inherited;
  FItemCls := 'x-menu-text';
end;

{$IFDEF FPC}constructor TExtMenuTextItem.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuTextItem.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

procedure TExtMenuItem.SetFCanActivate(Value : Boolean); begin
  FCanActivate := Value;
  JSCode('canActivate:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFHref(Value : String); begin
  FHref := Value;
  JSCode('href:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFHrefTarget(Value : String); begin
  FHrefTarget := Value;
  JSCode('hrefTarget:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFIcon(Value : String); begin
  FIcon := Value;
  JSCode('icon:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFIconCls(Value : String); begin
  FIconCls := Value;
  JSCode('iconCls:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFItemCls(Value : String); begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFMenu(Value : TExtMenuMenu); begin
  FMenu := Value;
  Value.DeleteFromGarbage;
  JSCode('menu:' + VarToJSON([Value, false]));
end;

procedure TExtMenuItem.SetFShowDelay(Value : Integer); begin
  FShowDelay := Value;
  JSCode('showDelay:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFText(Value : String); begin
  FText := Value;
  if not ConfigAvailable(JSName) then
    SetText(Value)
  else
    JSCode('text:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFMenu_(Value : TExtMenuMenu); begin
  FMenu_ := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.menu=' + VarToJSON([Value, false]) + ';');
end;

function TExtMenuItem.JSClassName : string; begin
  Result := 'Ext.menu.Item';
end;

procedure TExtMenuItem.InitDefaults; begin
  inherited;
  FCanActivate := true;
  FHref := '#';
  FItemCls := 'x-menu-item';
  FMenu := TExtMenuMenu.CreateInternal(Self, 'menu');
  FShowDelay := 200;
  FMenu_ := TExtMenuMenu.CreateInternal(Self, 'menu');
end;

{$IFDEF FPC}constructor TExtMenuItem.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuItem.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtMenuItem.SetIconClass(Cls : String) : TExtFunction; begin
  JSCode(JSName + '.setIconClass(' + VarToJSON([Cls]) + ');', 'TExtMenuItem');
  Result := Self;
end;

function TExtMenuItem.SetText(Text : String) : TExtFunction; begin
  JSCode(JSName + '.setText(' + VarToJSON([Text]) + ');', 'TExtMenuItem');
  Result := Self;
end;

destructor TExtMenuItem.Destroy; begin
  try
    FMenu.Free;
    FMenu_.Free;
  except end;
  inherited;
end;

procedure TExtMenuCheckItem.SetFChecked(Value : Boolean); begin
  FChecked := Value;
  if not ConfigAvailable(JSName) then
    SetChecked(Value)
  else
    JSCode('checked:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFGroup(Value : String); begin
  FGroup := Value;
  JSCode('group:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFGroupClass(Value : String); begin
  FGroupClass := Value;
  JSCode('groupClass:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFItemCls(Value : String); begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFOnBeforecheckchange(Value : TExtMenuCheckItemOnBeforecheckchange); begin
  if Assigned(FOnBeforecheckchange) then
    JSCode(JSName+'.events ["beforecheckchange"].listeners=[];');
  if Assigned(Value) then
    On('beforecheckchange', Ajax('beforecheckchange', ['This', '%0.nm','Checked', '%1'], true));
  FOnBeforecheckchange := Value;
end;

procedure TExtMenuCheckItem.SetFOnCheckchange(Value : TExtMenuCheckItemOnCheckchange); begin
  if Assigned(FOnCheckchange) then
    JSCode(JSName+'.events ["checkchange"].listeners=[];');
  if Assigned(Value) then
    On('checkchange', Ajax('checkchange', ['This', '%0.nm','Checked', '%1'], true));
  FOnCheckchange := Value;
end;

function TExtMenuCheckItem.JSClassName : string; begin
  Result := 'Ext.menu.CheckItem';
end;

procedure TExtMenuCheckItem.InitDefaults; begin
  inherited;
  FGroupClass := 'x-menu-group-item';
  FItemCls := 'x-menu-item x-menu-check-item';
end;

{$IFDEF FPC}constructor TExtMenuCheckItem.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuCheckItem.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtMenuCheckItem.CheckHandler(This : TExtMenuCheckItem; Checked : Boolean) : TExtFunction; begin
  JSCode(JSName + '.checkHandler(' + VarToJSON([This, false, Checked]) + ');', 'TExtMenuCheckItem');
  Result := Self;
end;

function TExtMenuCheckItem.SetChecked(Checked : Boolean; SuppressEvent : Boolean = false) : TExtFunction; begin
  JSCode(JSName + '.setChecked(' + VarToJSON([Checked, SuppressEvent]) + ');', 'TExtMenuCheckItem');
  Result := Self;
end;

procedure TExtMenuCheckItem.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'beforecheckchange') and Assigned(FOnBeforecheckchange) then
    FOnBeforecheckchange(TExtMenuCheckItem(ParamAsObject('This')), ParamAsBoolean('Checked'))
  else if (AEvtName = 'checkchange') and Assigned(FOnCheckchange) then
    FOnCheckchange(TExtMenuCheckItem(ParamAsObject('This')), ParamAsBoolean('Checked'));
end;

procedure TExtMenuMenu.SetFAllowOtherMenus(Value : Boolean); begin
  FAllowOtherMenus := Value;
  JSCode('allowOtherMenus:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFDefaultAlign(Value : String); begin
  FDefaultAlign := Value;
  JSCode('defaultAlign:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFDefaultOffsets(Value : TExtObjectList); begin
  FDefaultOffsets := Value;
  Value.DeleteFromGarbage;
  JSCode('defaultOffsets:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFDefaults(Value : TExtObject); begin
  FDefaults := Value;
  Value.DeleteFromGarbage;
  JSCode('defaults:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFEnableScrolling(Value : Boolean); begin
  FEnableScrolling := Value;
  JSCode('enableScrolling:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFFloating(Value : Boolean); begin
  FFloating := Value;
  JSCode('floating:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFIgnoreParentClicks(Value : Boolean); begin
  FIgnoreParentClicks := Value;
  JSCode('ignoreParentClicks:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFItems(Value : TExtObjectList); begin
  FItems := Value;
  Value.DeleteFromGarbage;
  JSCode('items:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFLayout(Value : String); begin
  FLayout := Value;
  JSCode('layout:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFLayoutObject(Value : TExtObject); begin
  FLayoutObject := Value;
  Value.DeleteFromGarbage;
  JSCode('layout:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFMaxHeight(Value : Integer); begin
  FMaxHeight := Value;
  JSCode('maxHeight:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFMinWidth(Value : Integer); begin
  FMinWidth := Value;
  JSCode('minWidth:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFPlain(Value : Boolean); begin
  FPlain := Value;
  JSCode('plain:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFScrollIncrement(Value : Integer); begin
  FScrollIncrement := Value;
  JSCode('scrollIncrement:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFShadow(Value : Boolean); begin
  FShadow := Value;
  JSCode('shadow:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFShadowString(Value : String); begin
  FShadowString := Value;
  JSCode('shadow:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFShowSeparator(Value : Boolean); begin
  FShowSeparator := Value;
  JSCode('showSeparator:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFSubMenuAlign(Value : String); begin
  FSubMenuAlign := Value;
  JSCode('subMenuAlign:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFOnClick(Value : TExtMenuMenuOnClick); begin
  if Assigned(FOnClick) then
    JSCode(JSName+'.events ["click"].listeners=[];');
  if Assigned(Value) then
    On('click', Ajax('click', ['This', '%0.nm','MenuItem', '%1.nm','E', '%2.nm'], true));
  FOnClick := Value;
end;

procedure TExtMenuMenu.SetFOnItemclick(Value : TExtMenuMenuOnItemclick); begin
  if Assigned(FOnItemclick) then
    JSCode(JSName+'.events ["itemclick"].listeners=[];');
  if Assigned(Value) then
    On('itemclick', Ajax('itemclick', ['BaseItem', '%0.nm','E', '%1.nm'], true));
  FOnItemclick := Value;
end;

procedure TExtMenuMenu.SetFOnMouseout(Value : TExtMenuMenuOnMouseout); begin
  if Assigned(FOnMouseout) then
    JSCode(JSName+'.events ["mouseout"].listeners=[];');
  if Assigned(Value) then
    On('mouseout', Ajax('mouseout', ['This', '%0.nm','E', '%1.nm','MenuItem', '%2.nm'], true));
  FOnMouseout := Value;
end;

procedure TExtMenuMenu.SetFOnMouseover(Value : TExtMenuMenuOnMouseover); begin
  if Assigned(FOnMouseover) then
    JSCode(JSName+'.events ["mouseover"].listeners=[];');
  if Assigned(Value) then
    On('mouseover', Ajax('mouseover', ['This', '%0.nm','E', '%1.nm','MenuItem', '%2.nm'], true));
  FOnMouseover := Value;
end;

function TExtMenuMenu.JSClassName : string; begin
  Result := 'Ext.menu.Menu';
end;

procedure TExtMenuMenu.InitDefaults; begin
  inherited;
  FDefaultAlign := 'tl-bl?';
  FDefaultOffsets := TExtObjectList.Create(Self, 'defaultOffsets');
  FDefaults := TExtObject.CreateInternal(Self, 'defaults');
  FEnableScrolling := true;
  FItems := TExtObjectList.Create(Self, 'items');
  FLayoutObject := TExtObject.CreateInternal(Self, 'layout');
  FMinWidth := 120;
  FScrollIncrement := 24;
  FShowSeparator := true;
  FSubMenuAlign := 'tl-tr?';
end;

{$IFDEF FPC}constructor TExtMenuMenu.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuMenu.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtMenuMenu.AddElement(El : String) : TExtFunction; begin
  JSCode(JSName + '.addElement(' + VarToJSON([El]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddItem(Item : TExtMenuItem) : TExtFunction; begin
  JSCode(JSName + '.addItem(' + VarToJSON([Item, false]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddMenuItem(Config : TExtObject = nil) : TExtFunction; begin
  JSCode(JSName + '.addMenuItem(' + VarToJSON([Config, false]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddSeparator : TExtFunction; begin
  JSCode(JSName + '.addSeparator();', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddText(Text : String) : TExtFunction; begin
  JSCode(JSName + '.addText(' + VarToJSON([Text]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.Hide(Deep : Boolean = false) : TExtFunction; begin
  JSCode(JSName + '.hide(' + VarToJSON([Deep]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.Show(Element : String; Position : String = ''; ParentMenu : TExtMenuMenu = nil) : TExtFunction; begin
  JSCode(JSName + '.show(' + VarToJSON([Element, Position, ParentMenu, false]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.ShowAt(XyPosition : TExtObjectList; ParentMenu : TExtMenuMenu = nil) : TExtFunction; begin
  JSCode(JSName + '.showAt(' + VarToJSON(XyPosition) + ',' + VarToJSON([ParentMenu, false]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

destructor TExtMenuMenu.Destroy; begin
  try
    FDefaultOffsets.Free;
    FDefaults.Free;
    FItems.Free;
    FLayoutObject.Free;
  except end;
  inherited;
end;

procedure TExtMenuMenu.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'click') and Assigned(FOnClick) then
    FOnClick(TExtMenuMenu(ParamAsObject('This')), TExtMenuItem(ParamAsObject('MenuItem')), ExtEventObject)
  else if (AEvtName = 'itemclick') and Assigned(FOnItemclick) then
    FOnItemclick(TExtMenuBaseItem(ParamAsObject('BaseItem')), ExtEventObject)
  else if (AEvtName = 'mouseout') and Assigned(FOnMouseout) then
    FOnMouseout(TExtMenuMenu(ParamAsObject('This')), ExtEventObject, TExtMenuItem(ParamAsObject('MenuItem')))
  else if (AEvtName = 'mouseover') and Assigned(FOnMouseover) then
    FOnMouseover(TExtMenuMenu(ParamAsObject('This')), ExtEventObject, TExtMenuItem(ParamAsObject('MenuItem')));
end;

procedure TExtMenuColorMenu.SetFHandler(Value : TExtFunction); begin
  FHandler := Value;
  JSCode('handler:' + VarToJSON([Value, true]));
end;

procedure TExtMenuColorMenu.SetFHideOnClick(Value : Boolean); begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuColorMenu.SetFPaletteId(Value : String); begin
  FPaletteId := Value;
  JSCode('paletteId:' + VarToJSON([Value]));
end;

procedure TExtMenuColorMenu.SetFScope(Value : TExtObject); begin
  FScope := Value;
  Value.DeleteFromGarbage;
  JSCode('scope:' + VarToJSON([Value, false]));
end;

procedure TExtMenuColorMenu.SetFPalette(Value : TExtColorPalette); begin
  FPalette := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.palette=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtMenuColorMenu.SetFOnSelect(Value : TExtMenuColorMenuOnSelect); begin
  if Assigned(FOnSelect) then
    JSCode(JSName+'.events ["select"].listeners=[];');
  if Assigned(Value) then
    On('select', Ajax('select', ['Palette', '%0.nm','Color', '%1'], true));
  FOnSelect := Value;
end;

function TExtMenuColorMenu.JSClassName : string; begin
  Result := 'Ext.menu.ColorMenu';
end;

procedure TExtMenuColorMenu.InitDefaults; begin
  inherited;
  FScope := TExtObject.CreateInternal(Self, 'scope');
  FPalette := TExtColorPalette.CreateInternal(Self, 'palette');
end;

{$IFDEF FPC}constructor TExtMenuColorMenu.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuColorMenu.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

destructor TExtMenuColorMenu.Destroy; begin
  try
    FScope.Free;
    FPalette.Free;
  except end;
  inherited;
end;

procedure TExtMenuColorMenu.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'select') and Assigned(FOnSelect) then
    FOnSelect(TExtColorPalette(ParamAsObject('Palette')), ParamAsString('Color'));
end;

procedure TExtMenuDateMenu.SetFHandler(Value : TExtFunction); begin
  FHandler := Value;
  JSCode('handler:' + VarToJSON([Value, true]));
end;

procedure TExtMenuDateMenu.SetFHideOnClick(Value : Boolean); begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuDateMenu.SetFPickerId(Value : String); begin
  FPickerId := Value;
  JSCode('pickerId:' + VarToJSON([Value]));
end;

procedure TExtMenuDateMenu.SetFScope(Value : TExtObject); begin
  FScope := Value;
  Value.DeleteFromGarbage;
  JSCode('scope:' + VarToJSON([Value, false]));
end;

procedure TExtMenuDateMenu.SetFPicker(Value : TExtDatePicker); begin
  FPicker := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.picker=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtMenuDateMenu.SetFOnSelect(Value : TExtMenuDateMenuOnSelect); begin
  if Assigned(FOnSelect) then
    JSCode(JSName+'.events ["select"].listeners=[];');
  if Assigned(Value) then
    On('select', Ajax('select', ['Picker', '%0.nm','Date', '%1'], true));
  FOnSelect := Value;
end;

function TExtMenuDateMenu.JSClassName : string; begin
  Result := 'Ext.menu.DateMenu';
end;

procedure TExtMenuDateMenu.InitDefaults; begin
  inherited;
  FScope := TExtObject.CreateInternal(Self, 'scope');
  FPicker := TExtDatePicker.CreateInternal(Self, 'picker');
end;

{$IFDEF FPC}constructor TExtMenuDateMenu.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtMenuDateMenu.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

destructor TExtMenuDateMenu.Destroy; begin
  try
    FScope.Free;
    FPicker.Free;
  except end;
  inherited;
end;

procedure TExtMenuDateMenu.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'select') and Assigned(FOnSelect) then
    FOnSelect(TExtDatePicker(ParamAsObject('Picker')), ParamAsTDateTime('Date'));
end;

initialization
  ExtMenuMenuMgr := TExtMenuMenuMgrSingleton.CreateSingleton;

finalization
  ExtMenuMenuMgr.Destroy;
end.