.class Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PersonalPageTutorialAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalPagePKGArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rsrc:I

.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .param p4    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p5, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->items:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->rsrc:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v6, p2

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->rsrc:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :cond_0
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const v7, 0x7f0b03cc

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    # getter for: Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    # getter for: Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    # getter for: Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v7, 0x7f0b03cd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v6

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v7, "PersonalPageTutorialAppActivity"

    const-string v8, "No name found for application messaging"

    invoke-static {v7, v8, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
