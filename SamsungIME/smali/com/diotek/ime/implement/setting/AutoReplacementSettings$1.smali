.class Lcom/diotek/ime/implement/setting/AutoReplacementSettings$1;
.super Ljava/lang/Object;
.source "AutoReplacementSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings$1;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings$1;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
