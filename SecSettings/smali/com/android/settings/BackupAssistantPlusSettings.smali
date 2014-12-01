.class public Lcom/android/settings/BackupAssistantPlusSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BackupAssistantPlusSettings.java"


# static fields
.field public static TYPE_ALL:I

.field public static TYPE_DOCUMENT:I

.field public static TYPE_MUSIC:I

.field public static TYPE_PICTURE:I

.field public static TYPE_PICTURE_VIDEO:I

.field public static TYPE_VIDEO:I


# instance fields
.field private mBuaPlusContacts:Landroid/preference/PreferenceScreen;

.field private mBuaPlusMedia:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_ALL:I

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_MUSIC:I

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_VIDEO:I

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_PICTURE:I

    const/4 v0, 0x5

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_DOCUMENT:I

    const/4 v0, 0x6

    sput v0, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_PICTURE_VIDEO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isContactsVUX()Z
    .locals 2

    const-string v0, "SCH-I705"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "bua_plus_contacts"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    const-string v0, "bua_plus_media"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->isContactsVUX()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09137f

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    const v0, 0x7f09137e

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    sget v5, Lcom/android/settings/BackupAssistantPlusSettings;->TYPE_ALL:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const-string v3, "launchBuaMediaVUXApp"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "BackupAssistantPlusSettings"

    const-string v1, "cant find com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
