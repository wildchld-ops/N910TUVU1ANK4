.class Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;
.super Ljava/lang/Object;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconResult"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mListener:Landroid/webkitsec/WebIconDatabase$IconListener;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/graphics/Bitmap;
    .param p4    # Landroid/webkitsec/WebIconDatabase$IconListener;

    iput-object p1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->mIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->mListener:Landroid/webkitsec/WebIconDatabase$IconListener;

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->mListener:Landroid/webkitsec/WebIconDatabase$IconListener;

    iget-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->mIcon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Landroid/webkitsec/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
