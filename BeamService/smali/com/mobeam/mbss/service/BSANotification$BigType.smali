.class public final enum Lcom/mobeam/mbss/service/BSANotification$BigType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mobeam/mbss/service/BSANotification$BigType;

.field public static final enum Inbox:Lcom/mobeam/mbss/service/BSANotification$BigType;

.field public static final enum Picture:Lcom/mobeam/mbss/service/BSANotification$BigType;

.field public static final enum Text:Lcom/mobeam/mbss/service/BSANotification$BigType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mobeam/mbss/service/BSANotification$BigType;

    const-string v1, "Picture"

    invoke-direct {v0, v1, v2}, Lcom/mobeam/mbss/service/BSANotification$BigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/BSANotification$BigType;->Picture:Lcom/mobeam/mbss/service/BSANotification$BigType;

    new-instance v0, Lcom/mobeam/mbss/service/BSANotification$BigType;

    const-string v1, "Text"

    invoke-direct {v0, v1, v3}, Lcom/mobeam/mbss/service/BSANotification$BigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/BSANotification$BigType;->Text:Lcom/mobeam/mbss/service/BSANotification$BigType;

    new-instance v0, Lcom/mobeam/mbss/service/BSANotification$BigType;

    const-string v1, "Inbox"

    invoke-direct {v0, v1, v4}, Lcom/mobeam/mbss/service/BSANotification$BigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/BSANotification$BigType;->Inbox:Lcom/mobeam/mbss/service/BSANotification$BigType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mobeam/mbss/service/BSANotification$BigType;

    sget-object v1, Lcom/mobeam/mbss/service/BSANotification$BigType;->Picture:Lcom/mobeam/mbss/service/BSANotification$BigType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobeam/mbss/service/BSANotification$BigType;->Text:Lcom/mobeam/mbss/service/BSANotification$BigType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobeam/mbss/service/BSANotification$BigType;->Inbox:Lcom/mobeam/mbss/service/BSANotification$BigType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mobeam/mbss/service/BSANotification$BigType;->ENUM$VALUES:[Lcom/mobeam/mbss/service/BSANotification$BigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobeam/mbss/service/BSANotification$BigType;
    .locals 1

    const-class v0, Lcom/mobeam/mbss/service/BSANotification$BigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobeam/mbss/service/BSANotification$BigType;

    return-object v0
.end method

.method public static values()[Lcom/mobeam/mbss/service/BSANotification$BigType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mobeam/mbss/service/BSANotification$BigType;->ENUM$VALUES:[Lcom/mobeam/mbss/service/BSANotification$BigType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mobeam/mbss/service/BSANotification$BigType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
