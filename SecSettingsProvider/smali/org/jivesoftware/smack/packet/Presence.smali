.class public Lorg/jivesoftware/smack/packet/Presence;
.super Lorg/jivesoftware/smack/packet/Packet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/Presence$Mode;,
        Lorg/jivesoftware/smack/packet/Presence$Type;
    }
.end annotation


# instance fields
.field private a:Lorg/jivesoftware/smack/packet/Presence$Type;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lorg/jivesoftware/smack/packet/Presence$Mode;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Packet;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    :cond_0
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    :cond_1
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    :cond_2
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Presence;->a(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/packet/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/packet/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/packet/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-eqz v1, :cond_5

    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/packet/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_7

    const-string v1, "<priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</priority>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->b:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v1, v2, :cond_8

    const-string v1, "<show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</show>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->o()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "</presence>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/Presence$Type;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lorg/jivesoftware/smack/packet/Packet;->d()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-eqz v1, :cond_0

    const-string v1, "ext_pres_type"

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "ext_pres_status"

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_2

    const-string v1, "ext_pres_prio"

    iget v2, p0, Lorg/jivesoftware/smack/packet/Presence;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->b:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v1, v2, :cond_3

    const-string v1, "ext_pres_mode"

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->f:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
