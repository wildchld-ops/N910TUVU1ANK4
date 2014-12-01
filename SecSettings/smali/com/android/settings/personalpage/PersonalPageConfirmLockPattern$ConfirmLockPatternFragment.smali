.class public Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;
.super Landroid/app/Fragment;
.source "PersonalPageConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation


# instance fields
.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8

    sget-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$2;->$SwitchMap$com$android$settings$personalpage$PersonalPageConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0907f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0907f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0907f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0907f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f04004b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v3, 0x7f0b00ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v3, 0x7f0b00db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    const-string v3, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    const-string v3, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    const-string v3, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    sget-object v3, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V

    if-eqz p3, :cond_3

    const-string v3, "num_wrong_attempts"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePatternExists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
