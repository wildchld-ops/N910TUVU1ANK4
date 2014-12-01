.class public abstract Lcom/android/incallui/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragment$1;,
        Lcom/android/incallui/DialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/DialpadFragment$HoverIgnoringLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static mDtmfDialerFieldDigits:Ljava/lang/String;


# instance fields
.field private mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

.field private mDialpad:Landroid/widget/TableLayout;

.field private mDialpadElapsedTime:Landroid/widget/TextView;

.field private mDialpadElapsedTimeContainer:Landroid/view/View;

.field private mDialpadElapsedTimeTitle:Landroid/widget/TextView;

.field private mDtmfDialerField:Landroid/widget/EditText;

.field private mDtmfDialerFieldContainer:Landroid/view/View;

.field private mIsRapidInPutMode:Z

.field private mMinimodeButton:Landroid/widget/ImageButton;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldDigits:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0091

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0092

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0094

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0095

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0097

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e0099

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e009c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0e009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->mIsRapidInPutMode:Z

    return-void
.end method

.method private disableHovering(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e0099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    const v0, 0x7f0e009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_0
.end method

.method private resetAnimation(Z)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryCallElapsedTimeTitleForDialpad(ZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f090198

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090197

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    goto :goto_2
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 4

    const-string v3, "dtmf_smaller_hit_target"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v3}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/DialpadFragment;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment;->disableHovering(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public appendDigitsToField(C)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    const-string v0, "Firstly entered input is empty space. Ignore it."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldDigits:Ljava/lang/String;

    goto :goto_0
.end method

.method public clearDigits()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldDigits:Ljava/lang/String;

    return-void
.end method

.method createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/DialpadPresenter;->getInstance()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public onChangeSideDialPad(I)V
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeSideDialPad : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "onClick"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/DialpadPresenter;

    sget-object v4, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/android/incallui/DialpadPresenter;->processDtmf(CZ)V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v6}, Lcom/android/incallui/InCallActivity;->setGotoMiniMode(Z)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e008a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/DialpadFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->initializeProcessTime()V

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, "system/fonts/SamsungSans-Num3L.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0e0085

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    const v1, 0x7f0e0086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeContainer:Landroid/view/View;

    const v1, 0x7f0e0089

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    const v1, 0x7f0e0087

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeTitle:Landroid/widget/TextView;

    const v1, 0x7f0e008c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v1, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$1;)V

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    const v1, 0x7f0e0090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const-string v7, "onHover"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/DialpadFragment;->mIsRapidInPutMode:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey:  keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopTone()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/incallui/DialpadFragmentManager;->isFragmentSetAfterBootUp:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_1
    const-string v1, "dtmf_smaller_hit_target"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopTone()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPrimaryCallElapsedTimeForDialpad(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/incallui/DialpadFragment;->setPrimaryCallElapsedTimeTitleForDialpad(ZZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment;->resetAnimation(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCardPresenter;->enableCallerInfoCard(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setVisibleByAninmation(Z)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/CallAnimationUtils$Translate;->showTop(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCardPresenter;->enableCallerInfoCard(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallAnimationUtils$Translate;->hideBottom(Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldContainer:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setupKeypadLayout()V
    .locals 14

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isRapidInputMode()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/incallui/DialpadFragment;->mIsRapidInPutMode:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setupKeypadLayout - mIsRapidInPutMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/incallui/DialpadFragment;->mIsRapidInPutMode:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v7, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v5, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "QVGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "VGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v10

    const-string v11, "qvga_portrait_resolution_support"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v6, 0x1

    :goto_4
    const-string v11, "volte_jpn_orientation_feature"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    const/4 v10, 0x0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v2, v11

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v7, :cond_4

    if-eqz v6, :cond_12

    :cond_4
    if-eqz v10, :cond_11

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    :goto_6
    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v12, v2, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-nez v7, :cond_6

    if-eqz v6, :cond_1b

    :cond_6
    const/4 v11, -0x1

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v10, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01aa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01ab

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_21

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeContainer:Landroid/view/View;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeContainer:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_8
    const-string v11, "mini_popup_call_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_a

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isKeyguardSecureLocked(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_23

    const/4 v0, 0x1

    :goto_9
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "lock"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "missing_phone_lock"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v0, 0x0

    :cond_9
    const/4 v11, 0x1

    if-ne v0, v11, :cond_24

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v10, :cond_c

    if-nez v7, :cond_b

    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->updateOneHandMode()V

    :cond_c
    const-string v11, "volte_jpn_orientation_feature"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldDigits:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    sget-object v12, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldDigits:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    sget-object v12, Lcom/android/incallui/DialpadFragment;->mDtmfDialerFieldDigits:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_5

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    goto/16 :goto_6

    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    goto/16 :goto_6

    :cond_14
    if-eqz v9, :cond_15

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0197

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :cond_15
    if-eqz v10, :cond_16

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :cond_16
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :cond_17
    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "att_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "tmo_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_18
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19

    const/4 v11, -0x1

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_7

    :cond_19
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_b

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d019b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_b

    :cond_1b
    if-eqz v5, :cond_1d

    const/4 v11, -0x1

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v10, :cond_1c

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01ad

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01ae

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_7

    :cond_1c
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_7

    :cond_1d
    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d01a6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_7

    :cond_1e
    const/4 v11, -0x1

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v9, :cond_1f

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_7

    :cond_1f
    if-eqz v10, :cond_20

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0198

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0199

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->updateOneHandMode()V

    goto/16 :goto_7

    :cond_20
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d018b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_7

    :cond_21
    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeContainer:Landroid/view/View;

    if-eqz v11, :cond_22

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTimeContainer:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mDialpadElapsedTime:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_24
    iget-object v11, p0, Lcom/android/incallui/DialpadFragment;->mMinimodeButton:Landroid/widget/ImageButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public updateOneHandMode()V
    .locals 0

    return-void
.end method
