.class Lcom/android/incallui/RejectCallWithMessageContentIconMode$1;
.super Ljava/lang/Object;
.source "RejectCallWithMessageContentIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectCallWithMessageContentIconMode;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$1;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$1;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    iget-object v0, v0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$1;->this$0:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    iget-object v0, v0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
