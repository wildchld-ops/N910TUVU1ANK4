.class public Lcom/android/settings/myplace/MyPlaceItemsPreference;
.super Landroid/preference/Preference;
.source "MyPlaceItemsPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mPrefID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # Landroid/view/View$OnClickListener;
    .param p4    # I

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mContext:Landroid/content/Context;

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mPrefID:I

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mPrefID:I

    const v0, 0x7f04015b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v0, 0x7f040154

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getPrefID()I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mPrefID:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const v1, 0x7f0b0343

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceItemsPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
