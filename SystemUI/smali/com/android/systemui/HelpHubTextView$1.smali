.class Lcom/android/systemui/HelpHubTextView$1;
.super Ljava/lang/Object;
.source "HelpHubTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/HelpHubTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/HelpHubTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    # getter for: Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/HelpHubTextView;->access$000(Lcom/android/systemui/HelpHubTextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Lcom/android/systemui/HelpHubDrawable;

    invoke-direct {v0, v1}, Lcom/android/systemui/HelpHubDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    # getter for: Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/HelpHubTextView;->access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView$1;->this$0:Lcom/android/systemui/HelpHubTextView;

    # invokes: Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V
    invoke-static {v3}, Lcom/android/systemui/HelpHubTextView;->access$200(Lcom/android/systemui/HelpHubTextView;)V

    return-object v0
.end method
