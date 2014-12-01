.class Lcom/android/incallui/CallButtonFragment$14;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->showMemoryFullDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$14;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$14;->this$0:Lcom/android/incallui/CallButtonFragment;

    # invokes: Lcom/android/incallui/CallButtonFragment;->dismissMenuDialog()V
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$500(Lcom/android/incallui/CallButtonFragment;)V

    return-void
.end method
