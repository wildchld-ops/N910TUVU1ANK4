.class public Lcom/android/incallui/cover/CoverDialog;
.super Ljava/lang/Object;
.source "CoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;
    }
.end annotation


# instance fields
.field private mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

.field private mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

.field private mContext:Landroid/content/Context;

.field private mIsShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    iput-object p1, p0, Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;-><init>(Lcom/android/incallui/cover/CoverDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/cover/CoverDialog;)Lcom/android/incallui/cover/CoverCall;
    .locals 1
    .param p0    # Lcom/android/incallui/cover/CoverDialog;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/cover/CoverDialog;Lcom/android/incallui/cover/CoverCall;)Lcom/android/incallui/cover/CoverCall;
    .locals 0
    .param p0    # Lcom/android/incallui/cover/CoverDialog;
    .param p1    # Lcom/android/incallui/cover/CoverCall;

    iput-object p1, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/cover/CoverDialog;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/incallui/cover/CoverDialog;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverCall;->stopAnimations()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    const-string v1, "CoverDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearcover popup is dismissed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private hideDialog()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverCall;->stopAnimations()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    const-string v1, "CoverDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearcover popup is hidden "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "CoverDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClearCoverDialog is null or mIsShowing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showDialog(Lcom/samsung/android/sdk/cover/ScoverManager;II)V
    .locals 10
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverManager;
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const-string v4, "CoverDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isScreenOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isScreenOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez p1, :cond_1

    const-string v4, "CoverDialog"

    const-string v5, "coverManager is null"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "CoverDialog"

    const-string v5, "initialize cover dialog"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/high16 v1, 0x80000

    const v4, 0x8000

    or-int/2addr v1, v4

    or-int/lit16 v1, v1, 0x200

    const/high16 v4, 0x200000

    or-int/2addr v1, v4

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverDialog;->getStatusBarHeight()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v9}, Lcom/android/incallui/cover/CoverDialog;->setCoverScreenTime(Z)V

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "CoverDialog"

    const-string v5, "coverState is null"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_6

    :cond_3
    const-string v4, "CoverDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v8, v5}, Landroid/view/Window;->setLayout(II)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p1, v4, v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-boolean v7, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    const-string v4, "CoverDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearcover popup is shown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "block_data_during_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/incallui/CallCommandClient;->setCallProtectionValue(Z)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v4}, Lcom/android/incallui/cover/CoverCall;->setCallState()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "CoverDialog"

    const-string v5, "clearcover popup is shown (fail) "

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    :cond_8
    const-string v4, "CoverDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mClearCoverDialog is null or mIsShowing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/cover/CoverDialog;->mIsShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2
.end method


# virtual methods
.method public getCallCardCovered()Lcom/android/incallui/cover/CoverCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;

    return-object v0
.end method

.method public declared-synchronized manageDialog(Lcom/samsung/android/sdk/cover/ScoverManager;Z)V
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverManager;
    .param p2    # Z

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v1

    const-string v4, "CoverDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manageDialog : isClosed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", doFinish - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverDialog;->dismissDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    const-string v4, "CoverDialog"

    const-string v5, "Manage dialog if not LED cover type"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v3, v1}, Lcom/android/incallui/cover/CoverDialog;->showDialog(Lcom/samsung/android/sdk/cover/ScoverManager;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/incallui/cover/CoverDialog;->hideDialog()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setCoverScreenTime(Z)V
    .locals 5
    .param p1    # Z

    iget-object v2, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "samsung_screen_timeout_incall"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x7530

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v2, 0x4e20

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/cover/CoverDialog;->mClearCoverDialog:Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    int-to-long v2, v0

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1770

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0
.end method
