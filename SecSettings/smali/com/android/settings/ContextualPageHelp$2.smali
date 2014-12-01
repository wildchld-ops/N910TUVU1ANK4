.class Lcom/android/settings/ContextualPageHelp$2;
.super Ljava/lang/Object;
.source "ContextualPageHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ContextualPageHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ContextualPageHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/ContextualPageHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ContextualPageHelp$2;->this$0:Lcom/android/settings/ContextualPageHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp$2;->this$0:Lcom/android/settings/ContextualPageHelp;

    # getter for: Lcom/android/settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/ContextualPageHelp;->access$200(Lcom/android/settings/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0208d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp$2;->this$0:Lcom/android/settings/ContextualPageHelp;

    # getter for: Lcom/android/settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/settings/ContextualPageHelp;->access$300(Lcom/android/settings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
