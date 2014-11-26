.class public Landroid/webkitsec/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/webkitsec/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private hintTextview:Landroid/widget/TextView;

.field private isESSBrowser:Z

.field private isESSEmail:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mIsParentThemeDeviceDefault:Z

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkitsec/WebView;

.field private searchIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const v7, 0x10202b9

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    iput-boolean v6, p0, Landroid/webkitsec/FindActionModeCallback;->isESSEmail:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046a

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.browser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kanas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ageraltezm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    :cond_2
    const-string v2, "com.android.email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "victorltectc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->isESSEmail:Z

    :cond_3
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090136

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    :cond_4
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSEmail:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const v3, 0x1080864

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$NoAction;

    invoke-direct {v3}, Landroid/webkitsec/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020446

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020445

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b15

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$2;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$3;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$3;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_7
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/webkitsec/FindActionModeCallback;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020444

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    :cond_8
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    return-void

    :cond_9
    const-string v2, "com.android.email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090137

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$1;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$1;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_b

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090135

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto/16 :goto_0

    :cond_b
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090140

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/webkitsec/FindActionModeCallback;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Landroid/webkitsec/FindActionModeCallback;

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/FindActionModeCallback;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Landroid/webkitsec/FindActionModeCallback;

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private findNext(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView;->findNext(Z)V

    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public findAll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->clearMatches()V

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAll(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iput v3, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getActionModeGlobalRight()I
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x102049b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    :try_start_0
    iget-boolean v8, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v8, 0x10809e1

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v8, "com.android.email"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x1140007

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_2
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v6, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_4

    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x1140006

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x114000a

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1    # Landroid/view/ActionMode;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->notifyFindDialogDismissed()V

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchCount(IIZ)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWebView(Landroid/webkitsec/WebView;)V
    .locals 2
    .param p1    # Landroid/webkitsec/WebView;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    return-void
.end method

.method public showSoftInput()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    if-nez p3, :cond_0

    iput p2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    iput p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    goto :goto_0
.end method
