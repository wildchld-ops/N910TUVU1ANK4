.class public Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    }
.end annotation


# static fields
.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field private mNegativeModeObserver:Landroid/database/ContentObserver;

.field private mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    .locals 0
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
    .param p1    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    return v0
.end method

.method private awakenIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private prepareDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public callAccessControlMode(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public callAccessibilitySettings(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public changeNegativeModeSystemSetting(Z)V
    .locals 6
    .param p1    # Z

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "color_blind"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_2
.end method

.method public createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 7

    const v6, 0x7f090a13

    const v5, 0x7f090a12

    const/4 v4, 0x1

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;

    const v3, 0x7f090a09

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;

    const v3, 0x7f090a0a

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;

    const v3, 0x7f090a0d

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;

    const v3, 0x7f090a10

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onNegativeModeChanged()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeCheck()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->isNegativeColorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public handleShow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->awakenIfNecessary()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->prepareDialog()Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public isNegativeColorEnabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;

    return-void
.end method

.method public onNegativeModeChanged()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_1
.end method

.method public onTalkbackModeChanged()V
    .locals 15

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sidesync_source_connect"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v12, 0x20

    invoke-static {v12}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const v13, 0x7f090a0b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    :try_start_0
    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v12, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;

    invoke-direct {v12, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    const-wide/16 v13, 0x708

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v10, Landroid/content/Intent;

    const-string v12, "com.android.settings.action.talkback_off"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v10, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;

    invoke-direct {v12, p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/view/accessibility/AccessibilityEvent;)V

    const-wide/16 v13, 0x5dc

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const/16 v13, 0xff

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    if-ne v4, v12, :cond_3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_3
    const-string v12, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x3a

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_accessibility_services"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "accessibility_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v10, Landroid/content/Intent;

    const-string v12, "com.android.settings.action.talkback_off"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v10, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1
.end method

.method public onTalkbackModeCheck()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    iput-boolean p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->handleShow()V

    goto :goto_0
.end method
