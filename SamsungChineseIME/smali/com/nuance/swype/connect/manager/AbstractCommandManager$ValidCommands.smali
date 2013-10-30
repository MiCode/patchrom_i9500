.class public Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;
.super Ljava/lang/Object;
.source "AbstractCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidCommands"
.end annotation


# instance fields
.field private commands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    .line 78
    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;[I)V
    .locals 1
    .parameter "name"
    .parameter "allowedResposnes"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public getResponses(Ljava/lang/String;)[I
    .locals 1
    .parameter "name"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public hasName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z
    .locals 2
    .parameter "name"
    .parameter "command"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, result:Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p2, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public isExpectedResponse(Ljava/lang/String;I)Z
    .locals 3
    .parameter "name"
    .parameter "responseStatus"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getResponses(Ljava/lang/String;)[I

    move-result-object v1

    .line 135
    .local v1, responses:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 136
    aget v2, v1, v0

    if-ne v2, p2, :cond_0

    .line 137
    const/4 v2, 0x1

    .line 141
    :goto_1
    return v2

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z
    .locals 2
    .parameter "name"
    .parameter "response"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, result:Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p2, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 109
    :cond_0
    return v0
.end method
