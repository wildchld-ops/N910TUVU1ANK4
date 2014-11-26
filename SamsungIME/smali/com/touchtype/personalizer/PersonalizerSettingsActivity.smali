.class public Lcom/touchtype/personalizer/PersonalizerSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "PersonalizerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;,
        Lcom/touchtype/personalizer/PersonalizerSettingsActivity$Settings;
    }
.end annotation


# static fields
.field private static final KEY_PRESS_MODEL_DB_DIR_EX:Ljava/lang/String; = "KeyPressModelEx"

.field public static PERSONALIZE_FOLDER:Ljava/lang/String; = null

.field public static final PERSONALIZE_RESULT_PERSONALIZED:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

.field private mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

.field public mFromInstaller:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field public mPersonalizedResult:I

.field private mPreferenceActivity:Landroid/preference/PreferenceActivity;

.field private mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

.field private mPreferences:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->TAG:Ljava/lang/String;

    const-string v0, "personalize"

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->PERSONALIZE_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mFromInstaller:Z

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$102(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsActivity;
    .param p1    # Lcom/touchtype/personalizer/PersonalizerService;

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setPreferenceState()V

    return-void
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->removeKPMExFolder()V

    return-void
.end method

.method private removeKPMExFolder()V
    .locals 9

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "KeyPressModelEx"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[delete]dir.getAbsolutePath() + filename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeKPMExFolderByThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setPreferenceState()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setPreferenceState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearUserModel()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->clearUserModel()V

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->removeKPMExFolderByThread()V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mPreferenceFragment:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
