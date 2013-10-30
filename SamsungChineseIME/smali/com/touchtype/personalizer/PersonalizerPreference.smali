.class public Lcom/touchtype/personalizer/PersonalizerPreference;
.super Landroid/preference/Preference;
.source "PersonalizerPreference.java"


# instance fields
.field private final ID:I

.field private mActive:Z

.field private mDefaultSummary:Ljava/lang/CharSequence;

.field private mPersonalizer:Lcom/touchtype/personalizer/Personalizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 25
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    .line 31
    invoke-direct {p0, p1, p2, v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    .line 52
    return-void
.end method

.method private launchPersonalizer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/Personalizer;->cancel()V

    .line 146
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Landroid/app/Activity;)V

    .line 149
    :cond_0
    return-void

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showNoInternetConnectionToast()V

    .line 85
    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 88
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showNoInternetConnectionToast()V

    .line 94
    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Lcom/touchtype/personalizer/service/WeiboPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/WeiboPersonalizer;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->wrapPersonalizer(Lcom/touchtype/personalizer/Personalizer;)Lcom/touchtype/personalizer/Personalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 98
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto :goto_0

    .line 103
    :pswitch_3
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showNoInternetConnectionToast()V

    .line 105
    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto :goto_0

    .line 107
    :cond_3
    new-instance v0, Lcom/touchtype/personalizer/service/GmailPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/GmailPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 108
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showNoInternetConnectionToast()V

    .line 115
    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto/16 :goto_0

    .line 117
    :cond_4
    new-instance v0, Lcom/touchtype/personalizer/service/TwitterPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/TwitterPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 118
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto/16 :goto_0

    .line 123
    :pswitch_5
    new-instance v0, Lcom/touchtype/personalizer/service/SmsPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/SmsPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    goto/16 :goto_0

    .line 127
    :pswitch_6
    new-instance v0, Lcom/touchtype/personalizer/service/ContactsPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/ContactsPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    goto/16 :goto_0

    .line 131
    :pswitch_7
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showNoInternetConnectionToast()V

    .line 133
    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto/16 :goto_0

    .line 135
    :cond_5
    new-instance v0, Lcom/touchtype/personalizer/service/DeleteRemotePersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/DeleteRemotePersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    .line 136
    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private showNoInternetConnectionToast()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0247

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    return-void
.end method

.method private wrapPersonalizer(Lcom/touchtype/personalizer/Personalizer;)Lcom/touchtype/personalizer/Personalizer;
    .locals 2
    .parameter "p"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, pz:Lcom/touchtype/personalizer/Personalizer;
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showNoInternetConnectionToast()V

    .line 163
    :goto_0
    return-object v0

    .line 161
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getPersonalizer()Lcom/touchtype/personalizer/Personalizer;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method protected onClick()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 56
    iget-boolean v3, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    if-nez v3, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->launchPersonalizer()V

    .line 58
    iput-boolean v5, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, service:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0250

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, format:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    .line 178
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 173
    .restart local p1
    :cond_0
    iget-object p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_0
.end method
