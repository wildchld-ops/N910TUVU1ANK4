.class public Lcom/android/mms/spam/UpdateSpamNumberAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UpdateSpamNumberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/android/mms/data/ContactList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSaveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p1, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mResource:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSize:I

    iput-object p3, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/UpdateSpamNumberAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0    # Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/UpdateSpamNumberAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/spam/UpdateSpamNumberAdapter;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/UpdateSpamNumberAdapter;)I
    .locals 1
    .param p0    # Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    iget v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSize:I

    return v0
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->isChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    iput-object v2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mContact:Lcom/android/mms/data/Contact;

    const v2, 0x7f0b004d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0b004e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    new-instance v2, Lcom/android/mms/spam/UpdateSpamNumberAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter$1;-><init>(Lcom/android/mms/spam/UpdateSpamNumberAdapter;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/android/mms/spam/UpdateSpamNumberAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter$2;-><init>(Lcom/android/mms/spam/UpdateSpamNumberAdapter;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setFocusable(Z)V

    const v2, 0x7f020275

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isChecked(I)Z
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->toggle(I)V

    return-void
.end method

.method public setChecked(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setSaveButton(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Landroid/widget/Button;
    .param p2    # Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setSelectAllCheckbox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .param p1    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p1, p0, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method

.method public toggle(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->setChecked(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
