.class public Landroid/webkitsec/ConsoleMessage;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ConsoleMessage$MessageLevel;
    }
.end annotation


# instance fields
.field private mLevel:Landroid/webkitsec/ConsoleMessage$MessageLevel;

.field private mLineNumber:I

.field private mMessage:Ljava/lang/String;

.field private mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/ConsoleMessage$MessageLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/ConsoleMessage;->mMessage:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkitsec/ConsoleMessage;->mSourceId:Ljava/lang/String;

    iput p3, p0, Landroid/webkitsec/ConsoleMessage;->mLineNumber:I

    iput-object p4, p0, Landroid/webkitsec/ConsoleMessage;->mLevel:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    return-void
.end method


# virtual methods
.method public lineNumber()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/ConsoleMessage;->mLineNumber:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ConsoleMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Landroid/webkitsec/ConsoleMessage$MessageLevel;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ConsoleMessage;->mLevel:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/ConsoleMessage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method
