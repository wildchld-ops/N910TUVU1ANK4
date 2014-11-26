.class public Lcom/android/phone/RoamingAutoDialOption;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingAutoDialOption.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isFinishing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "RoamingAutoDialOption"

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialOption;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RoamingAutoDialOption;->isFinishing:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/RoamingAutoDialOption;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/RoamingAutoDialOption;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/RoamingAutoDialOption;->isFinishing:Z

    return p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onBackPressed()..."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v2, p0, Lcom/android/phone/RoamingAutoDialOption;->isFinishing:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "RoamingAutoDialOption"

    const-string v4, "onCreate()..."

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v4, 0x7f0903f4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v4, 0x7f0903f5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$1;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$2;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$2;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "RoamingAutoDialOption"

    const-string v4, "setupAlert"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "RoamingAutoDialOption"

    const-string v4, "disable sound effects"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v0, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onPause()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onResume()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onStop()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v0, p0, Lcom/android/phone/RoamingAutoDialOption;->isFinishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
