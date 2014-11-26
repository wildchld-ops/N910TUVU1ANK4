.class public Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiPersonaSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private mActMngr:Landroid/app/ActivityManager;

.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPersona:Landroid/os/PersonaManager;

.field private mUsersGrid:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mActMngr:Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    new-instance v0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    const-string v0, "KeyguardMultiPersonaSelectorView"

    const-string v1, "<init>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->context:Landroid/content/Context;

    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mActMngr:Landroid/app/ActivityManager;

    return-void
.end method

.method private getTimeToLock(I)J
    .locals 8
    .param p1    # I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const v7, 0x927c0

    invoke-static {v5, v6, v7, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    int-to-long v3, v5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->context:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_0
    return-wide v3
.end method

.method private isLocked(I)Z
    .locals 11
    .param p1    # I

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v7, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v7, p1}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v7

    if-eq v7, v6, :cond_2

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v7, p1}, Landroid/os/PersonaManager;->getPersonaBackgroundTime(I)J

    move-result-wide v7

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->getTimeToLock(I)J

    move-result-wide v9

    add-long v0, v7, v9

    const-string v7, "KeyguardMultiPersonaSelectorView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bgtime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->getPersonaBackgroundTime(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timetolock= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->getTimeToLock(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KeyguardMultiPersonaSelectorView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expirationTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v7, v4, v0

    if-ltz v7, :cond_3

    move v2, v6

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v6, p1}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-string v6, "KeyguardMultiPersonaSelectorView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLockRequired? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isLocked= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v8, p1}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "KeyguardMultiPersonaSelectorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() v null? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, p1, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    const-string v3, "KeyguardMultiPersonaSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SWITCHING TO USER dismissing keyguard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->getPersonaInfo()Landroid/content/pm/PersonaInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->getPersonaInfo()Landroid/content/pm/PersonaInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v3, "KeyguardMultiPersonaSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyguard STATE ===== "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v7, v2}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->switchPersona(I)Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->isLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->hideSecurityView(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    const-string v0, "KeyguardMultiPersonaSelectorView"

    const-string v1, "onInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->userActivity()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
