-- Obtener todos los usuarios con sus roles e información personal
SELECT u.id, u.login, r.nombre AS rol, p.nombre, p.apellido, p.correo
FROM usuario u
JOIN rol r ON u.id_rol = r.id
JOIN persona p ON u.id_persona = p.id;

-- Obtener todas las propiedades con sus tipos y propietarios
SELECT i.id, i.nomenclatura, ti.titulo AS tipo, p.nombre, p.apellido
FROM inmueble i
JOIN tipo_inmueble ti ON i.id_tipo_inmueble = ti.id
JOIN detalle_inmueble di ON i.id = di.id_inmueble
JOIN detalle_inmueble_persona dip ON di.id = dip.id_detalle_inmueble
JOIN persona p ON dip.id_persona = p.id
WHERE dip.tipo_relacion = 'propietario';

-- Obtener todos los municipios con sus departamentos
SELECT m.id, m.nombre AS municipio, d.nombre AS departamento
FROM municipio m
JOIN departamento d ON m.id_departamento = d.id;

-- Obtener todos los detalles de propiedades con su estado y personas asociadas
SELECT di.id, i.nomenclatura, di.estado, p.nombre, p.apellido, dip.tipo_relacion
FROM detalle_inmueble di
JOIN inmueble i ON di.id_inmueble = i.id
JOIN detalle_inmueble_persona dip ON di.id = dip.id_detalle_inmueble
JOIN persona p ON dip.id_persona = p.id;

-- Obtener todos los administradores (usuarios con rol de administrador)
SELECT u.id, u.login, p.nombre, p.apellido
FROM usuario u
JOIN rol r ON u.id_rol = r.id
JOIN persona p ON u.id_persona = p.id
WHERE r.nombre = 'administrador';

-- Obtener todas las propiedades con sus metros cuadrados y tipo
SELECT i.id, i.nomenclatura, i.m2, ti.titulo AS tipo
FROM inmueble i
JOIN tipo_inmueble ti ON i.id_tipo_inmueble = ti.id;

-- Obtener todas las personas con su municipio y departamento
SELECT p.id, p.nombre, p.apellido, m.nombre AS municipio, d.nombre AS departamento
FROM persona p
JOIN municipio m ON p.id_municipio = m.id
JOIN departamento d ON m.id_departamento = d.id;

-- Obtener todos los detalles de propiedades con estado activo
SELECT di.id, i.nomenclatura, ti.titulo AS tipo
FROM detalle_inmueble di
JOIN inmueble i ON di.id_inmueble = i.id
JOIN tipo_inmueble ti ON i.id_tipo_inmueble = ti.id
WHERE di.estado = 'activo';


-- Obtener todas las propiedades con su tipo y número de personas asociadas
SELECT i.id, i.nomenclatura, ti.titulo AS tipo, COUNT(dip.id_persona) AS num_personas
FROM inmueble i
JOIN tipo_inmueble ti ON i.id_tipo_inmueble = ti.id
JOIN detalle_inmueble di ON i.id = di.id_inmueble
LEFT JOIN detalle_inmueble_persona dip ON di.id = dip.id_detalle_inmueble
GROUP BY i.id, i.nomenclatura, ti.titulo;

-- Obtener todos los departamentos con el conteo de sus municipios
SELECT d.id, d.nombre, COUNT(m.id) AS num_municipios
FROM departamento d
LEFT JOIN municipio m ON d.id = m.id_departamento
GROUP BY d.id, d.nombre;
