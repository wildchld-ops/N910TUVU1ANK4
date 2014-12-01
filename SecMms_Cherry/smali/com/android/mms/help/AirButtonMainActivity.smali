.class public Lcom/android/mms/help/AirButtonMainActivity;
.super Landroid/app/Activity;
.source "AirButtonMainActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Mms/AirButtonMainActivity"

.field public static helpAttachIntent:Z

.field public static helpContactIntent:Z


# instance fields
.field private getEasymodeEnabled:Z

.field private guideView:Landroid/view/View;

.field private helpPopupView:Landroid/widget/LinearLayout;

.field private helpPopupView2:Landroid/widget/LinearLayout;

.field private helpguide:Landroid/widget/RelativeLayout;

.field private helpguide2:Landroid/widget/RelativeLayout;

.field private hoverImage:Landroid/widget/ImageView;

.field private hoverImage2:Landroid/widget/ImageView;

.field private hoverTextLayout:Landroid/widget/TextView;

.field private hoverTextLayout2:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private infoCompleteTutorial:Landroid/widget/Button;

.field private mAttachButton:Landroid/widget/Button;

.field private mAttachButtonLinear:Landroid/widget/LinearLayout;

.field private mAttachButtonSmall:Landroid/widget/Button;

.field private mBottomPanel:Landroid/view/View;

.field private mComposerLeftMarginEasymodePx:I

.field private mComposerLeftMarginPx:I

.field private mComposerPanel:Landroid/widget/ScrollView;

.field private mComposerbody:Landroid/widget/FrameLayout;

.field private mEachDeliveryReadReportSizeImgHeightPx:I

.field private mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeCalllogButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeSendButtonTextView:Landroid/widget/TextView;

.field private mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

.field private mEditField:Landroid/widget/EditText;

.field private mEditorBg:I

.field protected mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

.field private mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

.field private mLocale:Ljava/lang/String;

.field private mMediaView:Landroid/widget/ImageView;

.field private mMessageSizeTextHeightPx:I

.field public mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

.field private mMmsRichContainerLinear:Landroid/widget/LinearLayout;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mPriorityLeftView:Landroid/widget/ImageView;

.field private mPriorityView:Landroid/widget/ImageView;

.field private mRecipientButton:Landroid/widget/Button;

.field public mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private mRichContainerBg:I

.field private mRichContainerMinHeightDefaultPx:I

.field private mRichContainerMinHeightEasymodePx:I

.field private mRichContainerMinHeightEnablePx:I

.field private mRichContainerMinHeightLeftAttachPx:I

.field private mRichContainerMinHeightTemplatebuttonPx:I

.field private mRichContainerMinHeightWhenPriority:I

.field private mRichContainerMinHeightWhenPriorityLandscape:I

.field public mSendButton:Landroid/widget/Button;

.field private mSendbuttonBottomMarginPx:I

.field private mShortcutPanel:Landroid/widget/LinearLayout;

.field private mTemplateButton:Landroid/widget/Button;

.field private mTemplateButtonLeft:Landroid/widget/Button;

.field private mTextColor:I

.field public mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

.field private mToLabel:Landroid/widget/TextView;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTutorialCallback:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

.field private mView:Landroid/widget/LinearLayout;

.field private mWidgetAttach:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetAttachEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetAttachLeft:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetRecipientButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetRecipientButtonEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mediaViewPort:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttach:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachLeft:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButtonEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    new-instance v0, Lcom/android/mms/help/AirButtonMainActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/help/AirButtonMainActivity$2;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/android/mms/help/AirButtonMainActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/AirButtonMainActivity$4;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTutorialCallback:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/help/AirButtonMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->infoCompleteTutorial:Landroid/widget/Button;

    return-object v0
.end method

.method private initComposerDimensions()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    :goto_0
    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightDefaultPx:I

    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightEnablePx:I

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightLeftAttachPx:I

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightEasymodePx:I

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightTemplatebuttonPx:I

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMessageSizeTextHeightPx:I

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightWhenPriority:I

    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightWhenPriorityLandscape:I

    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEachDeliveryReadReportSizeImgHeightPx:I

    return-void

    :cond_0
    iput v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iput v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    goto :goto_0
.end method

.method private initContainer()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b02a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b02a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initEventForHelpIntent()V
    .locals 8

    const v7, 0x7f040016

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v4}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeCalllogButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v2, :cond_5

    const v2, 0x7f040013

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_3

    const v2, 0x7f040014

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->showDialog(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpPopupView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverTextLayout:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpPopupView2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverTextLayout2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->infoCompleteTutorial:Landroid/widget/Button;

    return-void

    :cond_5
    const v2, 0x7f040012

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_6

    const v2, 0x7f040015

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v2, :cond_8

    const v2, 0x7f040018

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_4

    const v2, 0x7f040019

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    const v2, 0x7f040017

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_4

    const v2, 0x7f04001a

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "Mms/AirButtonMainActivity"

    const-string v3, "initRecipientsEditor()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    const v2, 0x7f0b00f7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v2, :cond_2

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const v2, 0x7f0b00fc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditorBg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v2, 0x7f0b00fe

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "forceHalfNumber"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v3, 0x7f0c0188

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method private initResourceRefs()V
    .locals 10

    const v9, 0x7f0c0227

    const v8, 0x7f0b010d

    const/4 v7, 0x0

    const v3, 0x7f0b00ff

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerbody:Landroid/widget/FrameLayout;

    const v3, 0x7f0b00eb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTopLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0b011f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageListView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v3, 0x7f0b0106

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mBottomPanel:Landroid/view/View;

    const v3, 0x7f0b00f5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerPanel:Landroid/widget/ScrollView;

    const v3, 0x7f0b0117

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    const v4, 0x7f020303

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0b0122

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0125

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeCalllogButtonLinear:Landroid/widget/LinearLayout;

    const v3, 0x7f0b012f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0b0132

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    :cond_1
    const v3, 0x7f0b0136

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0137

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    const v4, 0x7f0202e7

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    const v4, 0x7f0c0029

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_6
    const v3, 0x7f0b010f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0110

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MmsRichContainer;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initContainer()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerBg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_8

    iget v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_8
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v4, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setHint(I)V

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f0b0116

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mPriorityView:Landroid/widget/ImageView;

    const v3, 0x7f0b0108

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mPriorityLeftView:Landroid/widget/ImageView;

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mLocale:Ljava/lang/String;

    :cond_c
    const v3, 0x7f0b010a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const v3, 0x7f0b0107

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f0b011b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0b011c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonSmall:Landroid/widget/Button;

    const v3, 0x7f0b011d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButton:Landroid/widget/Button;

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->screenLayoutUpdate()V

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    if-nez v3, :cond_11

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    :cond_11
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private screenLayoutUpdate()V
    .locals 12

    const v8, 0x7f0b0110

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v7, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightDefaultPx:I

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_17

    :cond_1
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-nez v8, :cond_2

    const v8, 0x7f0b00fa

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_4
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x40e00000

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v10, 0x40c00000

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v10

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_2
    iget-boolean v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-nez v8, :cond_9

    const v8, 0x7f0b00fa

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    :cond_9
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/Button;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const v8, 0x7f0b0115

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_c
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_d
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_e
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0130

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_11

    const v8, 0x7f0b0132

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0134

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0133

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0134

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0133

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const v8, 0x7f0b0121

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b012d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_12
    return-void

    :cond_13
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_16

    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightEnablePx:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_2

    :cond_16
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMessageSizeTextHeightPx:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_2

    :cond_17
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-nez v8, :cond_18

    const v8, 0x7f0b00fa

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    :cond_18
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_19
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1a
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLinear:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_4
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightEnablePx:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_2

    :cond_1e
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_1f
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_20
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public createAirButtonWidget()V
    .locals 1

    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButtonEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttach:Lcom/samsung/android/airbutton/AirButtonImpl;

    goto :goto_1
.end method

.method public createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getAdapterRecipientList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setGravity(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTutorialCallback:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setDirection(I)V

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirButtonMainActivity$3;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V

    return-object v0

    :cond_1
    sget-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getAdapterImageList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setGravity(I)V

    goto :goto_0
.end method

.method public getAdapterImageList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 8

    const v7, 0x7f0201c0

    const v6, 0x7f0201bf

    const v5, 0x7f0201be

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public getAdapterRecipientList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 8

    const v7, 0x7f0c0430

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020282

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c042f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0432

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020283

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0433

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020284

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020285

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0431

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0434

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public hideInfoBubble(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/help/AirButtonMainActivity$5;-><init>(Lcom/android/mms/help/AirButtonMainActivity;Landroid/app/Activity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initEventForHelpIntent()V

    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->screenLayoutUpdate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initComposerDimensions()V

    const-string v1, "helpAttachTutorial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    const-string v1, "helpContactTutorial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    const v1, 0x7f0202d7

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditorBg:I

    const v1, 0x106000d

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerBg:I

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f040034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableLandscapeModeonActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initRecipientsEditor()V

    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initEventForHelpIntent()V

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->createAirButtonWidget()V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const v1, 0x7f040033

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected showDialog(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0015

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirButtonMainActivity$1;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
