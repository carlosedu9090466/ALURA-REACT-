import { useState } from 'react';
import './CampoTexto.css';

const CampoTexto = (props) => {

    //manter um estado dentro de uma function 
    //const [valor, setValor] = useState('Carlos');

    const aoDigitado = (evento) => {
        props.aoAlterado(evento.target.value);
    }

    return (
        <div className="campo-texto">
            <label>
                {props.label}
            </label>
            <input value={props.valor} onChange={aoDigitado} required={props.obrigatorio} placeholder={props.placeholder} />
        </div>
    );
}

export default CampoTexto;