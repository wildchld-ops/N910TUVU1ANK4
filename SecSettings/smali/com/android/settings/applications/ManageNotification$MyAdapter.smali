.class public Lcom/android/settings/applications/ManageNotification$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private appData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/applications/ManageNotification;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageNotification;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->appData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->appData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->appData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ManageNotification$ViewHolder;-><init>(Lcom/android/settings/applications/ManageNotification;)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040145

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0b0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->img:Landroid/widget/ImageView;

    const v1, 0x7f0b0081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0b0322

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->appData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "app_icon"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->appData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "app_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->this$0:Lcom/android/settings/applications/ManageNotification;

    iget-object v3, v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification$MyAdapter;->appData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "pkg_name"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/settings/applications/ManageNotification;->setSummaryText(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/settings/applications/ManageNotification;->access$000(Lcom/android/settings/applications/ManageNotification;Landroid/widget/TextView;Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageNotification$ViewHolder;

    goto :goto_0
.end method
