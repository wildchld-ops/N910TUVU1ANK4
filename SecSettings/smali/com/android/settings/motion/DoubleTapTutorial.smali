.class public Lcom/android/settings/motion/DoubleTapTutorial;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DoubleTapTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion/DoubleTapTutorial$Header;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCanDoubleTap:Z

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f020478
        0x7f020479
        0x7f020478
        0x7f020479
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z

    iput-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    iput-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/motion/DoubleTapTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/DoubleTapTutorial$1;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    iput-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/motion/DoubleTapTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/DoubleTapTutorial$2;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    iput-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/motion/DoubleTapTutorial$3;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/DoubleTapTutorial$3;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    iput-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/DoubleTapTutorial;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->showRetryDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion/DoubleTapTutorial;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/DoubleTapTutorial;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/motion/DoubleTapTutorial;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z

    return p1
.end method

.method static synthetic access$500()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    sget-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/DoubleTapTutorial;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->stopAnimation()V

    return-void
.end method

.method private addHeaderPreference(Lcom/android/settings/motion/DoubleTapTutorial$Header;)V
    .locals 3

    const/4 v2, 0x1

    iget v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->iconRes:I

    if-ge v1, v2, :cond_2

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->titleRes:I

    if-ge v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->titleRes:I

    if-ge v1, v2, :cond_3

    iget-object v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x109009a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    iget v1, p1, Lcom/android/settings/motion/DoubleTapTutorial$Header;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2
.end method

.method private addHeaderPreferencesFromRes(I)V
    .locals 13

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_1

    if-ne v8, v10, :cond_0

    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "preference-headers"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v9

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :cond_4
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_9

    if-ne v8, v11, :cond_5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_9

    :cond_5
    if-eq v8, v11, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "header"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v2, Lcom/android/settings/motion/DoubleTapTutorial$Header;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/DoubleTapTutorial$Header;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v9, v0, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v9, v7, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_6

    iget v9, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_8

    iget v9, v7, Landroid/util/TypedValue;->resourceId:I

    iput v9, v2, Lcom/android/settings/motion/DoubleTapTutorial$Header;->titleRes:I

    :cond_6
    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v2, Lcom/android/settings/motion/DoubleTapTutorial$Header;->iconRes:I

    invoke-direct {p0, v2}, Lcom/android/settings/motion/DoubleTapTutorial;->addHeaderPreference(Lcom/android/settings/motion/DoubleTapTutorial$Header;)V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v9

    :cond_8
    :try_start_2
    iget-object v9, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v2, Lcom/android/settings/motion/DoubleTapTutorial$Header;->title:Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0
.end method

.method private showRetryDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090fef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090feb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090fec

    new-instance v2, Lcom/android/settings/motion/DoubleTapTutorial$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/DoubleTapTutorial$6;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090fed

    new-instance v2, Lcom/android/settings/motion/DoubleTapTutorial$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/DoubleTapTutorial$5;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private startAnimation()V
    .locals 2

    const-string v0, "DoubleTapTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->updateAnimation()V

    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    const-string v0, "DoubleTapTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    const/16 v3, 0x66

    const-string v0, "DoubleTapTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    :cond_0
    iget v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->stopAnimation()V

    iget v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationIndex:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v4, 0x7f0700dd

    invoke-direct {p0, v4}, Lcom/android/settings/motion/DoubleTapTutorial;->addHeaderPreferencesFromRes(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02047b

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0208d3

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v4, Lcom/android/settings/motion/DoubleTapTutorial$4;

    invoke-direct {v4, p0}, Lcom/android/settings/motion/DoubleTapTutorial$4;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "motion_recognition"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v4, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mListView:Landroid/widget/ListView;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->stopAnimation()V

    sget-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->updateAnimation()V

    sget-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "DoubleTapTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040085

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b00a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b019d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mAnimationView:Landroid/widget/ImageView;

    const v4, 0x7f090fe1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090fb7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090859

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/settings/motion/DoubleTapTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/DoubleTapTutorial$7;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/DoubleTapTutorial$7;-><init>(Lcom/android/settings/motion/DoubleTapTutorial;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/android/settings/motion/DoubleTapTutorial;->startAnimation()V

    return-void
.end method
