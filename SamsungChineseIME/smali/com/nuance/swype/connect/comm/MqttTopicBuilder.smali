.class public Lcom/nuance/swype/connect/comm/MqttTopicBuilder;
.super Ljava/lang/Object;
.source "MqttTopicBuilder.java"


# instance fields
.field private identifier:Ljava/lang/String;

.field private subtopic:Ljava/lang/String;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "fullTopic"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    const-string v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, params:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    .line 19
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    .line 20
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v1           #params:[Ljava/lang/String;
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issue parsing topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "newTopic"
    .parameter "newSubtopic"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "newTopic"
    .parameter "newSubtopic"
    .parameter "newIdentifier"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getIdentifer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "newIdentifer"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setIdentifiers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "deviceId"
    .parameter "swib"
    .parameter "sessionId"
    .parameter "accountId"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    const-string v1, "a"

    if-ne v0, v1, :cond_1

    .line 64
    iput-object p4, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iput-object p2, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p3, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSubtopic(Ljava/lang/String;)V
    .locals 0
    .parameter "newSubtopic"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0
    .parameter "newTopic"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, st:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->subtopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public valid()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->topic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
