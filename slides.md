---
marp: true
theme: gaia
class: invert
header: Under the Hood | Observability
---

<style scoped>
section {
    background-image: url("uth-bg.png");
    background-size: cover;
}

a {
  text-decoration: none;
  color: inherit;
}
</style>

<!-- _header: '' -->
<!-- _paginate: false -->

### Under the hood
# Observability

<br>
<br>
<br>
<br>
<br>

###### [fabio@kipters.dev](mailto:kipters.dev)
###### [Twitter: @kipters](https://twitter.com/kipters)
###### [Telegram: @kipters](https://t.me/kipters)

![bg left:33% 66%](./freecircle.png)

---

# Cos'è l'observability?

> Observability is a measure of how well internal states of a system can be inferred from knowledge of its exteral outputs
&mdash; Wikipedia

<!-- Intentionality -->
<!-- Questions (impact, time for action, latency) -->
<!-- Send everything upfront (unknown unknown) -->

---

# Cos'è l'observability?

> Observability is about designing our systems to intentionally emit information
that is useful to both its operators and benefactors.
&mdash; Paul Bruce (Observability Advocate, Chair of o11yfest)

---

# Cos'è OpenTelemetry

> OpenTelemetry is a collection of tools, APIs, and SDKs. Use it to instrument, generate, collect, and export telemetry data (metrics, logs, and traces) to help you analyze your software’s performance and behavior.
&mdash; opentelemetry.io

---

# Logs

- Standardizzazione completata nell'estate 2022
- Tool ancora non 100% pronti
- Non ne parleremo oggi

---

# Metrics

> A measurement about a service, captured at runtime

Pensato per informazioni statistiche aggregate

![bg left 90%](./metrics_queueclient.png)

---

# Metriche

- Sei tipi:
  - Counter + async Counter
  - UpDownCounter + async UpDownCounter
  - Gauge
  - Histogram
- Ha un nome, una descrizione e una unità di misura
- Può avere attributi e "baggage"

---

<!-- _class: lead -->

![bg 66%](./metrics_queueclient.png)

---

<!-- _class: lead -->

![bg 90%](./queueclient_metrics_code.png)

---

<!-- _class: lead -->

![bg 90%](./metrics_server_duration.png)

---

<!-- _header: '' -->

![bg](./fry_not_sure.jpg)

---

<!-- _class: lead -->

![bg 90%](./metrics_gc_heap.png)

---

![bg 90%](./metrics_grafana_heap.png)

---

# Traces

- Una traccia è "la cosa" che il sistema sta facendo
- È composta da span, uno legato all'altro
- Può avere attributi e "baggage"
- Molto incentrata sulla causalità

<!-- Causality: one thing happens, which leads to another thing happening etc -->

---

# Distributed tracing

- Segue il flusso dell'esecuzione all'interno del sistema
- Invia il contesto della traccia da un sistema all'altro, usando lo standard
W3C Trace
- Non solo per microservizi
- È un concetto, non un tool

---

<!-- _class: lead -->
<!-- _header: '' -->

![bg](./datadog_trace.png)

---

<!-- _class: lead -->
<!-- _header: '' -->

![bg 45%](./trace_tags.png)

---

<!-- _class: lead -->
<!-- _header: '' -->

![bg](./trace_slow_timeline.png)

---

# OpenTelemetry

- Language-agnostic
  - Supporta .NET, Go, Java, JavaScript, PHP, Python + altri
- Protocol-first
- Compatibile W3C Trace

---

# Perché OpenTelemetry

- Language-agnostic
- Indipendente (evita il lock-in)
- Una singola API per le librerie di telemetria e le applicazioni
- Grosso ecosistema di tool OSS
- Provider APM stanno convergendo su di esso

---

<!-- _header: '' -->

![bg 45%](./deps-java.png)


---

<!-- _header: '' -->

![bg 90%](./deps-dotnet.png)

---

<!-- _header: '' -->

![bg 90%](./config-dotnet.png)

---

<!-- _header: '' -->

![bg 90%](./java-env-vars.png)

---

<!-- _header: '' -->

![bg 90%](./grafana-traces.png)

---

<!-- _header: '' -->

![bg 90%](./java-manual-instrumenting.png)

---

# Demo!

![](./yo-banner.jpg)

---

<!-- _class: lead -->

![](./demo-infra.png)

---

<!-- _class: lead -->

![w:816 h:338](./demo-grafana-stack.png)

--- 

# Domande?

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

##### [https://opentelemetry.io](https://opentelemetry.io)
##### [https://www.w3.org/TR/trace-context](https://www.w3.org/TR/trace-context)

---

<!-- _header: '' -->

## Seguici sul canale telegram [@FreeCirclePa](https://t.me/FreeCirclePa) per sapere quando sarà il prossimo Under the Hood!

![bg left:33% 66%](./freecircle.png)


---

# 👋