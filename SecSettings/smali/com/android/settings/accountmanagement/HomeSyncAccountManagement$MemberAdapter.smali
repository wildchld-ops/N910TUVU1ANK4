.class Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemberAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field isdeletemode:Z

.field private final mAllaccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mallEasySetupAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mallEasySetupAccount:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->isdeletemode:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f040116

    const/4 v8, 0x0

    invoke-virtual {v2, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;-><init>(Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;)V

    const v7, 0x7f0b018e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v7, 0x7f0b02a4

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->email:Landroid/widget/TextView;

    const v7, 0x7f0b02a6

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const v7, 0x7f0b02a8

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const v7, 0x7f0b02a7

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->image_size:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0917c8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->email:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mallEasySetupAccount:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const v8, 0x7f0917ca

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;

    move-result-object v8

    iget-object v7, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/android/settings/accountmanagement/AccountManager;->getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/settings/accountmanagement/AccountManager;->dBGetTotalSecuredFileInfo(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4130000000000000L

    div-double/2addr v5, v7

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v7

    const-wide/high16 v9, 0x4090000000000000L

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    invoke-static {v5, v6, v9}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_1
    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v7

    const-wide/high16 v9, 0x4090000000000000L

    div-double v3, v7, v9

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    invoke-static {v3, v4, v9}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const v8, 0x7f0917cb

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v1, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->image_size:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
