.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDateTimeButton:Landroid/widget/CompoundButton;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTimeZone:Ljava/util/TimeZone;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZoneButton:Landroid/widget/Button;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;

.field private mUsingXLargeLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private is24Hour()Z
    .locals 1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoDateTimeEnabled()Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x400

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x4000c00

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showTimezonePicker(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find zone picker anchor view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-direct {v2, p0, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0207f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private updateTimeAndDateDisplay()V
    .locals 6

    iget-boolean v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/DatePicker;->updateDate(III)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    goto :goto_0
.end method


# virtual methods
.method public initUiForXl()V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    const v6, 0x7f0b017b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "VNZ"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    :goto_0
    const v6, 0x7f0b017d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v6, 0x7f0b0181

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TimePicker;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->is24Hour()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TimePicker;->setEnabled(Z)V

    const v6, 0x7f0b017f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/DatePicker;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v9, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/DatePicker;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v8}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-static {v6}, Lcom/android/settings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0b017c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v6, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v7, "isWifiOnly is true, remove Automatic date and time layout and set AUTO_TIME and AUTO_TIME_ZONE to false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const v6, 0x7f0b00b1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b00d5

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v6, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    sget-object v6, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has not EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto/16 :goto_1

    :cond_5
    move v6, v8

    goto/16 :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v0, p2

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_0
    const v3, 0x7f0b017b

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    :cond_3
    :sswitch_2
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00b1 -> :sswitch_1
        0x7f0b00d5 -> :sswitch_2
        0x7f0b017b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v2, 0x0

    const-string v8, "forFullHD"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const-string v8, "forFullHD"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->hide()V

    :cond_3
    const v8, 0x7f040078

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    const v8, 0x7f0b017b

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v2, :cond_4

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    :cond_4
    iget-boolean v8, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->initUiForXl()V

    :cond_5
    :goto_1
    const/4 v8, 0x0

    const v9, 0x7f040079

    invoke-static {p0, v8, v9}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    iget-boolean v8, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v8, :cond_6

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "test"

    const-string v9, "in global config"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f0b002d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v8, 0x1a70004

    invoke-virtual {v4, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setIndicatorTransparency()V

    :cond_7
    return-void

    :cond_8
    const/4 v8, 0x0

    goto :goto_0

    :cond_9
    const v8, 0x7f0b00b1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    instance-of v8, v0, Landroid/widget/Button;

    if-eqz v8, :cond_c

    if-eqz v0, :cond_c

    sget-object v8, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v9, "Next is Button instance"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const-string v8, ""

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090811

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020639

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, -0xa

    invoke-static {v7, v8, v9}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v8, 0x7f090b60

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_c
    const v8, 0x7f0b002e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const v8, 0x7f090b60

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    sget-object v8, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v9, "Next is LinearLayout instance"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090811

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090956

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "p4note"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v8

    if-nez v8, :cond_6

    const v8, 0x7f0b002d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v8, 0x400000

    invoke-virtual {v4, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/DatePicker;->updateDate(III)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    :cond_1
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b0179

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2, p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1

    const v0, 0x7f0b0178

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
