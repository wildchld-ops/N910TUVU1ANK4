.class public Lcom/android/settings/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# static fields
.field private static final HANDLE_REDRAW_POPUP:I = 0xbb9

.field public static final TAGClass:Ljava/lang/String; = "RejectListPreference"

.field private static isEmptyPopup:Z


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    new-instance v0, Lcom/android/settings/nearby/RejectListPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/RejectListPreference$3;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v0, 0x7f091242

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    const v0, 0x7f09123b

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    return p0
.end method

.method private getRejectList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->getRejectList()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRejectListValue()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->getRejectListValue()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    const-string v0, "RejectListPreference"

    const-string v1, "onPrepareDialogBuilder"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "RejectListPreference"

    const-string v4, "showDialog"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/RejectListPreference;->getRejectList()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/nearby/RejectListPreference;->getRejectListValue()[Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    if-eqz v3, :cond_0

    const-string v3, "RejectListPreference"

    const-string v4, "showDialog"

    const-string v5, "isEmptyPopup is shown"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v1

    if-lt v3, v6, :cond_1

    array-length v3, v2

    if-ge v3, v6, :cond_2

    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v5, 0x7f091248

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v5, 0x7f09124b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/nearby/RejectListPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/nearby/RejectListPreference$2;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09123a

    new-instance v5, Lcom/android/settings/nearby/RejectListPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings/nearby/RejectListPreference$1;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    sput-boolean v6, Lcom/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    const-string v0, "RejectListPreference"

    const-string v1, "updateDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RejectListPreference"

    const-string v1, "updateDialog"

    const-string v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
