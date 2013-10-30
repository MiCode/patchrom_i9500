.class public Lcom/nuance/swype/connect/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ALL:I = 0x1

.field private static loggerAllowedLevel:I

.field private static loggerDefaultTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x6

    sput v0, Lcom/nuance/swype/connect/util/Logger;->loggerAllowedLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 146
    const/4 v0, 0x7

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 150
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "message"
    .parameter "d"

    .prologue
    .line 158
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "message"
    .parameter "d"

    .prologue
    .line 154
    const/4 v0, 0x7

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public static configure(Ljava/lang/String;)V
    .locals 2
    .parameter "logTag"

    .prologue
    .line 28
    sput-object p0, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting default tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static configure(Ljava/lang/String;I)V
    .locals 2
    .parameter "logTag"
    .parameter "level"

    .prologue
    .line 21
    sput-object p0, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    .line 22
    sput p1, Lcom/nuance/swype/connect/util/Logger;->loggerAllowedLevel:I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating logging to level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/connect/util/Logger;->loggerAllowedLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with default tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 61
    const/4 v0, 0x3

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 65
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "message"
    .parameter "d"

    .prologue
    .line 69
    const/4 v0, 0x3

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 126
    const/4 v0, 0x6

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 130
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "message"
    .parameter "d"

    .prologue
    .line 138
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "message"
    .parameter "d"

    .prologue
    .line 134
    const/4 v0, 0x6

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 110
    const/4 v0, 0x4

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 114
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "message"
    .parameter "d"

    .prologue
    .line 118
    const/4 v0, 0x4

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method protected static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "level"
    .parameter "tag"
    .parameter "message"
    .parameter "d"

    .prologue
    .line 43
    sget v0, Lcom/nuance/swype/connect/util/Logger;->loggerAllowedLevel:I

    if-ge p0, v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    if-nez p3, :cond_0

    .line 49
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 78
    const/4 v0, 0x2

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "message"
    .parameter "d"

    .prologue
    .line 86
    const/4 v0, 0x2

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 94
    const/4 v0, 0x5

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 98
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "message"
    .parameter "d"

    .prologue
    .line 102
    const/4 v0, 0x5

    sget-object v1, Lcom/nuance/swype/connect/util/Logger;->loggerDefaultTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/nuance/swype/connect/util/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method
