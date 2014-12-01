.class Lcom/android/settings/SViewStyleClock$3;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewStyleClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x3

    # setter for: Lcom/android/settings/SViewStyleClock;->mItemIndex:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v1}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    # invokes: Lcom/android/settings/SViewStyleClock;->setfocusButton()V
    invoke-static {v1}, Lcom/android/settings/SViewStyleClock;->access$100(Lcom/android/settings/SViewStyleClock;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/SViewStyleClock;->mItemIndex:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/SViewStyleClock;->mItemIndex:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$3;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x2

    # setter for: Lcom/android/settings/SViewStyleClock;->mItemIndex:I
    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
