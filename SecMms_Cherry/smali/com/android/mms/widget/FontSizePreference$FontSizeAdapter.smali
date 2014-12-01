.class Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/FontSizePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontSizeAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    return-object p2
.end method
