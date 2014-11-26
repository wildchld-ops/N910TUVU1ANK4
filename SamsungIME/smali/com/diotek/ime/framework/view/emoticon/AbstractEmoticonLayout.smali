.class public abstract Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;


# instance fields
.field private final PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

.field private final PREF_LASTEST_EMOTICONS:Ljava/lang/String;

.field protected inputMethod:I

.field private mCurrentCategory:I

.field private mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsTabletMode:Z

.field private mLastestEmoticon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLastestEmoticonCount:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "emoticons"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_LASTEST_EMOTICONS:Ljava/lang/String;

    const-string v0, "LastestEmoticonList"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "emoticons"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_LASTEST_EMOTICONS:Ljava/lang/String;

    const-string v0, "LastestEmoticonList"

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->PREF_KEY_LASTEST_EMOTICONS_LIST:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    iput v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initLastestEmoticonList()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "emoticons"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "LastestEmoticonList"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " "

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getListLayoutHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getLastestEmoticonCount()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->initLastestEmoticonList()V

    return-void
.end method

.method private lastestEmoticonToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateLatestEmoticon(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticonCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected abstract getEmoticonCountInRow()I
.end method

.method protected abstract getEmoticonFontSize()F
.end method

.method protected abstract getEmoticonHeight()I
.end method

.method protected abstract getEmoticonLineResourceId()I
.end method

.method protected abstract getEmoticonTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getEmoticonWidth()I
.end method

.method protected abstract getItemBackgroundResId()I
.end method

.method public abstract getItemMarginBottom()I
.end method

.method public abstract getItemMarginLeft()I
.end method

.method public abstract getItemMarginRight()I
.end method

.method public abstract getItemMarginTop()I
.end method

.method public abstract getItemPaddingBottom()I
.end method

.method public abstract getItemPaddingLeft()I
.end method

.method public abstract getItemPaddingRight()I
.end method

.method public abstract getItemPaddingTop()I
.end method

.method protected abstract getLastestEmoticonCount()I
.end method

.method public getLatestEmoticonSize()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getListLayoutHeight()I
.end method

.method public onEmoticonClickListener(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, -0x73

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->updateLatestEmoticon(Ljava/lang/String;)V

    return-void
.end method

.method public saveLatestEmoticonList()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "emoticons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LastestEmoticonList"

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->lastestEmoticonToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEmoticonCategory(Ljava/util/ArrayList;I)V
    .locals 10
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    if-ne v5, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8, v8}, Landroid/view/View;->scrollTo(II)V

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonCountInRow()I

    move-result v3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_5

    rem-int v5, v2, v3

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v5, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonLineResourceId()I

    move-result v7

    invoke-direct {v5, v6, v7, v0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v5, p0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonAdapterListener(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonFontSize()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setFontSize(F)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonWidth(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setEmoticonHeight(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5, v6, v8, v8, v8}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setRowPadding(IIII)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setItemPadding(IIII)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemMarginBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setItemMargin(IIII)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getItemBackgroundResId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setItemBackgroundResId(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mEmoticonAdapter:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentCategory:I

    goto/16 :goto_0
.end method
