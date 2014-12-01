.class Lcom/android/settings/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/settings/DreamBackend$DreamInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    # getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04009f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/settings/DreamSettings$DreamInfoAdapter$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$4;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private getCurrentSelection()Lcom/android/settings/DreamBackend$DreamInfo;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    iget-boolean v2, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    const-string v7, "getView(%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    # invokes: Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/settings/DreamSettings;->access$800(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    move-object v3, p2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v7, 0x1020006

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/settings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/settings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x1020019

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v7, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v7, 0x1020018

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/android/settings/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    const v7, 0x7f0b0109

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_2

    const v7, 0x3f4ccccd

    :goto_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x102001a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000

    :goto_5
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    new-instance v7, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v7, v0, Lcom/android/settings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    :goto_6
    return-object v3

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const v7, 0x3ea8f5c3

    goto :goto_2

    :cond_3
    const/4 v7, 0x4

    goto :goto_3

    :cond_4
    const/4 v7, 0x4

    goto :goto_4

    :cond_5
    const v7, 0x3ecccccd

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_6
.end method
