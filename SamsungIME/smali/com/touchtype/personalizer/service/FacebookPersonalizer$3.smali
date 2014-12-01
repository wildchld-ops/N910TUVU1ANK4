.class Lcom/touchtype/personalizer/service/FacebookPersonalizer$3;
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

    iput-object p1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$3;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
