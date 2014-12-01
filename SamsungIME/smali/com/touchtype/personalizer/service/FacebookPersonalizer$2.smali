.class Lcom/touchtype/personalizer/service/FacebookPersonalizer$2;
.super Ljava/lang/Object;
.source "FacebookPersonalizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/service/FacebookPersonalizer;->showDownloadGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$2;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$2;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$2;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    # getter for: Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->access$100(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    # invokes: Lcom/touchtype/personalizer/service/FacebookPersonalizer;->signInToFacebook(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->access$200(Lcom/touchtype/personalizer/service/FacebookPersonalizer;Landroid/app/Activity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
