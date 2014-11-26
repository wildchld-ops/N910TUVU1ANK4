.class Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "RejectCallWithMessageContentIconMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/RejectCallWithMessageContentIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconModeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;


# direct methods
.method public constructor <init>(Lcom/android/incallui/RejectCallWithMessageContentIconMode;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    # getter for: Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->access$000(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    # invokes: Lcom/android/incallui/RejectCallWithMessageContentIconMode;->findItem(I)Ljava/util/HashMap;
    invoke-static {v0, p1}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->access$100(Lcom/android/incallui/RejectCallWithMessageContentIconMode;I)Ljava/util/HashMap;

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
    .locals 13
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-nez p2, :cond_4

    iget-object v10, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    # getter for: Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->access$200(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v10, 0x7f040079

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;

    invoke-direct {v9}, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;-><init>()V

    const v10, 0x7f0e029e

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v10, 0x7f0e0281

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    # invokes: Lcom/android/incallui/RejectCallWithMessageContentIconMode;->findItem(I)Ljava/util/HashMap;
    invoke-static {v10, p1}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->access$100(Lcom/android/incallui/RejectCallWithMessageContentIconMode;I)Ljava/util/HashMap;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    const-string v10, "icon_state"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    const/4 v0, 0x0

    const-string v7, "com.android.phone"

    const/4 v6, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    # getter for: Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->access$200(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "com.android.phone"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iget-object v10, v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_3

    const-string v10, "title"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "message"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\n"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_2
    iget-object v10, v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v10, v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-object p2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v10, "RejectCallWithMessageContentIconMode"

    const-string v11, "com.android.phoneis not found."

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v10, v9, Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
