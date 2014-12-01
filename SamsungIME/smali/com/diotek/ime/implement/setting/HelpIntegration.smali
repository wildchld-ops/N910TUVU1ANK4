.class public Lcom/diotek/ime/implement/setting/HelpIntegration;
.super Landroid/app/Activity;
.source "HelpIntegration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final HWR_LANG_CURSIVE:I = 0x0

.field private static final HWR_LANG_NON_CURSIVE:I = 0x1

.field private static final HWR_LANG_NOT_SUPPORTED:I = 0x2


# instance fields
.field private final PACKAGE_NAME:Ljava/lang/String;

.field private mHelpContinousInputButtonState:Z

.field private mHelpGestureGuideButtonState:Z

.field private mHelpHandwritingButtonState:Z

.field private mHelpKeyboardButtonState:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mTutorialEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "com.sec.android.inputmethod"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->PACKAGE_NAME:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpKeyboardButtonState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpHandwritingButtonState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpGestureGuideButtonState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpContinousInputButtonState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/HelpIntegration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpKeyboardButtonState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/diotek/ime/implement/setting/HelpIntegration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpKeyboardButtonState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/HelpIntegration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpHandwritingButtonState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/diotek/ime/implement/setting/HelpIntegration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpHandwritingButtonState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/HelpIntegration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpGestureGuideButtonState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/diotek/ime/implement/setting/HelpIntegration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpGestureGuideButtonState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/HelpIntegration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpContinousInputButtonState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/implement/setting/HelpIntegration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mHelpContinousInputButtonState:Z

    return p1
.end method

.method private adjustText(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getHwrLanguageType(I)I
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x62670000 -> :sswitch_0
        0x63730000 -> :sswitch_0
        0x64610000 -> :sswitch_1
        0x64650000 -> :sswitch_1
        0x656c0000 -> :sswitch_0
        0x656e4742 -> :sswitch_1
        0x656e5553 -> :sswitch_1
        0x65730000 -> :sswitch_1
        0x65734553 -> :sswitch_1
        0x65735553 -> :sswitch_1
        0x66610000 -> :sswitch_0
        0x66690000 -> :sswitch_0
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x68720000 -> :sswitch_0
        0x68750000 -> :sswitch_0
        0x69740000 -> :sswitch_1
        0x69770000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_0
        0x6c740000 -> :sswitch_0
        0x6c760000 -> :sswitch_0
        0x6e620000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_1
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_1
        0x70744252 -> :sswitch_1
        0x70745054 -> :sswitch_1
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_0
        0x736b0000 -> :sswitch_1
        0x736c0000 -> :sswitch_0
        0x73760000 -> :sswitch_0
        0x74680000 -> :sswitch_0
        0x74720000 -> :sswitch_0
        0x756b0000 -> :sswitch_0
        0x75720000 -> :sswitch_0
        0x76690000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method private setAdjustText()V
    .locals 1

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->adjustText(Landroid/widget/TextView;)V

    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->adjustText(Landroid/widget/TextView;)V

    return-void
.end method

.method private setCursiveList()V
    .locals 9

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_2

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/setting/HelpIntegration;->getHwrLanguageType(I)I

    move-result v6

    if-nez v6, :cond_1

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const v7, 0x7f080096

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const-string v7, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "\u055d "

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v3, :cond_5

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_3

    const-string v7, ", "

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const-string v7, ": "

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const v7, 0x7f080097

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_8

    const-string v7, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "\u055d "

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_4
    if-eqz v3, :cond_8

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_6

    const-string v7, ", "

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-string v7, ": "

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method private setHwrLanguageList()V
    .locals 11

    const/16 v10, 0x8

    const/4 v1, 0x0

    const v8, 0x7f08008f

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    const-string v8, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "\u055d "

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :goto_1
    array-length v8, v2

    if-ge v0, v8, :cond_4

    aget-object v8, v2, v0

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/setting/HelpIntegration;->getHwrLanguageType(I)I

    move-result v7

    const-string v8, "ko"

    aget-object v9, v2, v0

    invoke-virtual {v9}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v8, ": "

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v8, ", "

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_3
    aget-object v8, v2, v0

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_6

    const v8, 0x7f080099

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0800b8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v8, 0x7f08009a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public hideSoftKeyboardFromWindow()V
    .locals 4

    const v2, 0x7f080084

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected initViews()V
    .locals 11

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    const v8, 0x7f03005c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const v8, 0x7f0800c6

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v8, 0x7f080084

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mTutorialEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mTutorialEditText:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v9, Lcom/diotek/ime/implement/setting/HelpIntegration$1;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$1;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/HelpIntegration;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v9, Lcom/diotek/ime/implement/setting/HelpIntegration$2;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$2;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f080083

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    new-instance v8, Lcom/diotek/ime/implement/setting/HelpIntegration$3;

    invoke-direct {v8, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$3;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v8, 0x7f0800c5

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    const v8, 0x7f0e00e8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const v8, 0x7f080081

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    new-instance v8, Lcom/diotek/ime/implement/setting/HelpIntegration$4;

    invoke-direct {v8, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$4;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v8, 0x7f080086

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    new-instance v8, Lcom/diotek/ime/implement/setting/HelpIntegration$5;

    invoke-direct {v8, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$5;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v8, 0x7f08009c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    new-instance v8, Lcom/diotek/ime/implement/setting/HelpIntegration$6;

    invoke-direct {v8, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$6;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v8, 0x7f0800a6

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    new-instance v8, Lcom/diotek/ime/implement/setting/HelpIntegration$7;

    invoke-direct {v8, p0}, Lcom/diotek/ime/implement/setting/HelpIntegration$7;-><init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->initViews()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->setAdjustText()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->setHwrLanguageList()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->setCursiveList()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateTargetHelpContent(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->hideSoftKeyboardFromWindow()V

    if-eqz p4, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f020905

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f020b23

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f020906

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f020b22

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
