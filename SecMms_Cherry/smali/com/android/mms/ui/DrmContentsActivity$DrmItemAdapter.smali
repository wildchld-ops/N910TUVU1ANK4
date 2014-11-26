.class public Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DrmContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DrmContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrmItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/DrmContentsActivity$DrmItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceID:I

.field final synthetic this$0:Lcom/android/mms/ui/DrmContentsActivity;

.field private vi:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DrmContentsActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DrmContentsActivity$DrmItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->mResourceID:I

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->vi:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->vi:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    const v4, 0x7f0b0175

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method
