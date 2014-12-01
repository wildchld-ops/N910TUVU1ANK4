.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHoverListener()Landroid/view/View$OnHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputMethod:I

.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;->inputMethod:I

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, -0x1

    iget v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :try_start_0
    const-string v2, "floating_candidate_bg_hover"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const v1, 0x7f020030

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "candidate_bg_hover"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    const v1, 0x7f020030

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
