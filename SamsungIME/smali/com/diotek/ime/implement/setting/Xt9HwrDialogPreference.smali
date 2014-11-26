.class public Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;
.super Landroid/preference/DialogPreference;
.source "Xt9HwrDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;,
        Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mEntries:[Ljava/lang/String;

.field private mEntryValues:[Ljava/lang/String;

.field private mThicknessAdapter:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;

.field mThicknessListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mThicknessListView:Landroid/widget/ListView;

.field private mThicknessView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    iget v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;I)I
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;I)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->saveInputMethodToSet(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private saveInputMethodToSet(I)V
    .locals 4
    .param p1    # I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDefaultThickness()V
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v1, -0x1

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setDefaultThickness()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntryValues:[Ljava/lang/String;

    iget v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1    # Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->setDefaultThickness()V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessView:Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessView:Landroid/view/View;

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessAdapter:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setEntries(Landroid/content/res/TypedArray;[Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/content/res/TypedArray;
    .param p2    # [Ljava/lang/String;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntryValues:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v2, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-direct {v2, p0, v3, v4}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;-><init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f030063

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;-><init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mThicknessAdapter:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;

    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntries:[Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->findIndexOfValue(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
