.class public Lcom/android/mms/ui/CbConfigPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final MENU_DELETE_CHANNEL:I = 0x0

.field public static final MENU_EDIT_CHANNEL:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/CbConfigPreferenceActivity"


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mActivePhone:I

.field private mAddChannelPosition:I

.field private mChannelActivationListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mChannelContainer:Landroid/preference/PreferenceGroup;

.field private mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mChnnealSelection:Landroid/preference/ListPreference;

.field private mChnnelActivation:Landroid/preference/CheckBoxPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

.field mInsertedSimNum:I

.field private mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mToast:Landroid/widget/Toast;

.field simActive1:Z

.field simActive2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iput v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mAddChannelPosition:I

    iput-boolean v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->simActive1:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->simActive2:Z

    iput v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mInsertedSimNum:I

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelActivationListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    return v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;
    .param p1    # Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mAddChannelPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setElementEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;
    .param p1    # Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesForMyChannel()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    return-void
.end method

.method private addPreferencesAddMyChannel()V
    .locals 3

    const-string v1, "add_my_channel"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add_my_channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "add_my_channel"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method private addPreferencesForMyChannel()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_0
    throw v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->invalidateOptionsMenu()V

    :cond_3
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface$OnClickListener;
    .param p2    # I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ee

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p1    # Landroid/database/Cursor;

    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V

    return-object v0
.end method

.method private createNLChannelPreference([Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 8
    .param p1    # [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    const-string v5, "[+-]?\\d+"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    const-string v5, "919"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "4370"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private refreshMyChannel()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->startQuery()V

    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceGroup;
    .param p2    # Landroid/preference/Preference;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setElementEnable(Z)V
    .locals 4
    .param p1    # Z

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_cb_channel_selection"

    const-string v3, "My channel"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_key_cb_channel_selection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "All channels"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v1, "My channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startQuery()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim_slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mAddChannelPosition:I

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    iget v1, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mAddChannelPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    iget v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-static {p0, v4, v1}, Lcom/android/mms/ui/ChannelUtils;->getIdbyChannel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    iget v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->show()V

    goto :goto_0

    :pswitch_1
    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mAddChannelPosition:I

    sub-int v9, v0, v1

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$7;

    invoke-direct {v0, p0, v9}, Lcom/android/mms/ui/CbConfigPreferenceActivity$7;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;I)V

    const v1, 0x7f0c007b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mInsertedSimNum:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->simActive1:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->simActive2:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-ne v2, v4, :cond_4

    const-string v2, "pref_key_cb_settings_activation_sim2"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v2, "pref_key_cb_channel_selection2"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v2, "pref_key_cb_channel_selection2"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCBChannel()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string v2, "pref_key_cb_channel_selection"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    const-string v2, "pref_key_cb_my_channels"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const-string v2, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnelActivation:Landroid/preference/CheckBoxPreference;

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_key_cb_channel_selection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_key_cb_my_channels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_key_cb_settings_activation_sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnelActivation:Landroid/preference/CheckBoxPreference;

    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createNLChannelPreference([Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setCbConfigPreferences()V

    return-void

    :cond_4
    const-string v2, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v2, "pref_key_cb_channel_selection"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v2, "pref_key_cb_channel_selection"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0b03fc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03fc
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/CbConfigPreferenceActivity$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$8;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    const v2, 0x7f0c007a

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v0, "pref_cb_my_channel_enabled_count"

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-static {p0, v2}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    iget v4, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const-string v0, "add_my_channel2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;I)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->show()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setElementEnable(Z)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "All channels"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref_key_cb_channel_selection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "All channels"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCBChannel()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "My channel"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref_key_cb_channel_selection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "My channel"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v2, "My channel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    const v3, 0x7f0c0102

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->invalidateOptionsMenu()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    const v3, 0x7f0c010a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    goto :goto_0
.end method

.method protected setCbConfigPreferences()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChnnealSelection:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V
    .locals 9
    .param p1    # Landroid/preference/CheckBoxPreference;
    .param p2    # Landroid/database/Cursor;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "channel_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "channel_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v8, "is_checked"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-ne v1, v6, :cond_3

    :goto_1
    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "919"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "4370"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1
.end method
