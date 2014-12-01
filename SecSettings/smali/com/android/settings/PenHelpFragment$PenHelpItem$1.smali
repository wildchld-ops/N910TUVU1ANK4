.class Lcom/android/settings/PenHelpFragment$PenHelpItem$1;
.super Ljava/lang/Object;
.source "PenHelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;

.field final synthetic val$ani:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/settings/PenHelpFragment$PenHelpItem;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;

    iput-object p2, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0208d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
